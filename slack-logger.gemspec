$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "slack_logger/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "slack-logger"
  s.version     = SlackLogger::VERSION
  s.authors     = ["josephverbeck"]
  s.email       = ["joseph.verbeck@nih.gov"]
  s.homepage    = "https://github.com/josephverbeck/slack-logger"
  s.summary     = "Simple rails plugin that sends error messages to slack"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 5.0.0.1"
  s.add_dependency "activesupport"
  s.add_dependency "slack-ruby-client", ">= 0.7.9"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
end
