desc 'Run the app'
task :server do
  puts "[34mrunning puma server on port 7777...[0m"
  system "rerun --background 'puma config.ru -p 7777'"
end

desc 'Start pry with application environment loaded'
task :console, :environment do |t, args|
  ENV['RACK_ENV'] = args[:environment] || 'development'

  exec "pry -r ./config/environment"
end

task :c => :console
task :s => :server
