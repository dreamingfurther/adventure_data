if defined?(RSpec)
  namespace :spec do
    desc "Run all unit tests"
    RSpec::Core::RakeTask.new(:units) do |t|
      t.pattern = Dir['spec/*/**/*_spec.rb'].reject{ |f| f['/features'] }
    end

    desc "Run all non js tests"
    task nonjs: :environment do
      system('rspec spec -t "~js"')
    end

    desc "Run all js tests"
    task js: :environment do
      system('rspec spec -t "js"')
    end
  end
end
