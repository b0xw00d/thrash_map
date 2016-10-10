desc 'Run the app'
task :server do
  system "shotgun"
end

desc 'Start pry with application environment loaded'
task :console, :environment do |t, args|
  ENV['RACK_ENV'] = args[:environment] || 'development'

  exec "pry -r ./config/environment"
end

task :c => :console
task :s => :server
