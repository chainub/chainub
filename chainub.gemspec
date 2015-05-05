$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chainub/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chainub"
  s.version     = Chainub::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Chainub."
  s.description = "TODO: Description of Chainub."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency 'rspec-rails'
  s.add_runtime_dependency "jquery-rails"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_dependency "devise"
end
