module Chainub
  class Engine < ::Rails::Engine
    isolate_namespace Chainub
    config.autoload_paths << File.expand_path("../", __FILE__)

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
