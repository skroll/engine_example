require "rspec/core/rake_task"

namespace :engine_example do
  desc "Generate a dummy app for testing and development"
  task :dummy_app => [:setup_dummy_app, :migrate_dummy_app]
  
  task :setup_dummy_app do
    require "rails"
    require "engine_example"
    require File.expand_path("../../generators/engine_example/dummy/dummy_generator",
                             __FILE__)
    
    EngineExample::DummyGenerator.start %w(--quiet)
  end
  
  task :migrate_dummy_app do
    # Set up migrations here once they are written
  end
  
  desc "Destroy dummy app"
  task :destroy_dummy_app do
    FileUtils.rm_rf "spec/dummy" if File.exists?("spec/dummy")
  end
end


