require 'test_helper'

class Slack::Logger::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Slack::Logger
  end
end
