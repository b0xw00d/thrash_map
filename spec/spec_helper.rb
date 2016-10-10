require 'rubygems'

ENV['RACK_ENV'] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)

require 'rack/test'
require 'database_cleaner'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end

if defined? RSpec::Core::Formatters::ProgressFormatter
  RSpec::Core::Formatters::ProgressFormatter.class_eval do
    DOTS = ["✅ ", "⚠️ ", "❌ "]

    def example_passed(_example)
      output.print DOTS[0]
    end

    def example_pending(_example)
      output.print DOTS[1]
    end

    def example_failed(_example)
      output.print DOTS[2]
    end
  end
end

def app
  Sinatra::Application
end
