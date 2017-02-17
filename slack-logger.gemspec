$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "slack/logger/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "slack-logger"
  s.version     = Slack::Logger::VERSION
  s.authors     = ["josephverbeck"]
  s.email       = ["joseph.verbeck@nih.gov"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Slack::Logger."
  s.description = "TODO: Description of Slack::Logger."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
