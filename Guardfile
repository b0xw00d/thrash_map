group :red_green_refactor, halt_on_fail: true do
  guard :rspec, all_on_start: true, cmd: "bundle exec rspec" do
    watch(%r{^spec/.+_spec\.rb})
    watch('spec/spec_helper.rb') { "spec" }
    watch('config/environment.rb') { "spec" }
    watch('config.ru') { "spec" }
    watch('app/controllers/application.rb') { "spec/controllers" }
    watch(%r{^spec/.+_spec\.rb})
    watch(%r{^app/(.+)\.rb}) { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^app/models/(.+)\.rb}) { |m| "spec/models/#{m[1]}_spec.rb" }
    watch(%r{^app/services/(.+)\.rb}) { |m| "spec/services/#{m[1]}_spec.rb" }
    watch(%r{^app/controllers/(.+)_(controller)\.rb}) do |m|
      "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb"
    end
  end

  guard :rubocop do
    watch(/.+\.rb$/)
    watch(/.+\.ru$/)
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end
end
