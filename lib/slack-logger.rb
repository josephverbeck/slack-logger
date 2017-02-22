require 'slack_logger/engine'
require 'slack-ruby-client'

module SlackLogger

  mattr_accessor :channel
  self.channel = nil

  mattr_accessor :token
  self.token = nil

  mattr_accessor :client
  self.token = nil

  mattr_accessor :logger
  self.logger = nil

  def self.setup
    yield self
  end

end