require 'rails_helper'

class InstallGeneratorTest < Rails::Generators::TestCase
  tests SlackLogger::InstallGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination


  test "Assert all files are properly created" do
    run_generator
    assert_file "config/initializers/slack_logger.rb"
  end
end