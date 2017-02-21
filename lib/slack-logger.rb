require 'slack_logger/logger'
require 'slack_logger/slack_io'

module SlackLogger

  mattr_accessor :channel
  self.channel = nil

  mattr_accessor :token
  self.token = nil

  mattr_accessor :client
  self.token = nil

  def self.setup
    yield self
  end

end