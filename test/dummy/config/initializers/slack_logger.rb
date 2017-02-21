SlackLogger.setup do |config|

  config.token = -> {Slack.configure.token = Rails.application.secrets.secret_key_base }

  config.client = -> { Slack::Web::Client.new }

  config.logger ||= -> { SlackLogger::Logger.new(SlackLogger::SlackIO)}

  config.channel = '#test_channel'

end