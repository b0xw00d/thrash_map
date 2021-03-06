# Log queries to STDOUT in development
if Sinatra::Application.development?
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

# Automatically load every file in APP_ROOT/app/models/*.rb, e.g.,
#   autoload "Person", 'app/models/person.rb'
#
# We have to do this in case we have models that inherit from each other.
# If model Student inherits from model Person and app/models/student.rb is
# required first, it will throw an error saying "Person" is undefined.
Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
  filename = File.basename(model_file).gsub('.rb', '')
  autoload ActiveSupport::Inflector.camelize(filename), model_file
end

# Heroku controls what database we connect to by setting the DATABASE_URL environment variable
# We need to respect that if we want our Sinatra apps to run on Heroku without modification
DB = URI.parse(ENV['DATABASE_URL'] ||
  "postgres://localhost/#{APP_NAME}_#{Sinatra::Application.environment}")

DB_NAME = DB.path[1..-1]

DB_CONFIG = {
  adapter:   DB.scheme == 'postgres' ? 'postgresql' : DB.scheme,
  host:      DB.host,
  port:      DB.port,
  username:  DB.user,
  password:  DB.password,
  database:  DB_NAME,
  encoding:  'utf8'
}

ActiveRecord::Base.establish_connection(DB_CONFIG)
