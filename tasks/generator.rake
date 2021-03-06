namespace :generate do
  desc "Create an empty model in app/models, e.g. rake generate:model NAME=User"
  task :model do
    unless ENV.has_key?('NAME')
      raise "Must specificy model name, e.g., rake generate:model NAME=User"
    end

    model_name     = ENV['NAME'].camelize
    model_filename = ENV['NAME'].underscore + '.rb'
    model_path     = APP_ROOT.join('app', 'models', model_filename)

    if File.exist?(model_path)
      raise "ERROR: Model file '#{model_path}' already exists"
    end

    puts "Creating #{model_path}"
    File.open(model_path, 'w+') do |f|
      f.write(<<-EOF.strip_heredoc)
        class #{model_name} < ActiveRecord::Base
        end
      EOF
    end
  end

  desc "Create with rake generate:migration NAME=create_tasks"
  task :migration do
    unless ENV.has_key?('NAME')
      raise "Must specificy migration name, " +
        "e.g. rake generate:migration NAME=create_tasks"
    end

    name     = ENV['NAME'].camelize
    filename = "%s_%s.rb" % [Time.now.strftime('%Y%m%d%H%M%S'), ENV['NAME'].underscore]
    path     = APP_ROOT.join('db', 'migrate', filename)

    if File.exist?(path)
      raise "ERROR: File '#{path}' already exists"
    end

    puts "Creating #{path}"
    File.open(path, 'w+') do |f|
      f.write(<<-EOF.strip_heredoc)
        class #{name} < ActiveRecord::Migration
          def change
          end
        end
      EOF
    end
  end

  namespace :spec do
    desc "Create an empty model spec in spec, " +
      " e.g. rake generate:spec:model NAME=user"
    task :model do
      unless ENV.has_key?('NAME')
        raise "Must specificy class name, " +
          " e.g. rake generate:spec:model NAME=user"
      end

      name     = ENV['NAME'].camelize
      filename = "%s_spec.rb" % ENV['NAME'].underscore
      path     = APP_ROOT.join('spec', 'models', filename)

      if File.exist?(path)
        raise "ERROR: File '#{path}' already exists"
      end

      puts "Creating #{path}"
      File.open(path, 'w+') do |f|
        f.write(<<-EOF.strip_heredoc)
          require_relative "../spec_helper.rb"

          describe #{name}, type: :model do
            xit "add some examples"
          end
        EOF
      end
    end

    desc "Create an empty controller spec in spec, " +
      "e.g. rake generate:spec:controller NAME=users_controller"
    task :controller do
      unless ENV.has_key?('NAME')
        raise "Must specificy class name, " +
          " e.g. rake generate:spec:controller NAME=users_controller"
      end

      name     = ENV['NAME'].camelize
      filename = "%s_spec.rb" % ENV['NAME'].underscore
      path     = APP_ROOT.join('spec', 'controllers', filename)

      if File.exist?(path)
        raise "ERROR: File '#{path}' already exists"
      end

      puts "Creating #{path}"
      File.open(path, 'w+') do |f|
        f.write(<<-EOF.strip_heredoc)
          require_relative "../spec_helper.rb"

          describe #{name} do
            xit "add some examples"
          end
        EOF
      end
    end
  end
end
