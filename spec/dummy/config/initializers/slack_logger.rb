SlackLogger.setup do |config|

  ## Logger
  #  ------
  #
  # The slack logger
  #
  ## Default:
  config.logger ||= SlackLogger::Logger.new(SlackLogger::SlackIO)

  ## Log Level
  #  ---------
  #
  #  The error level you would like to see in slack
  #  Note: We support all log levels, but you shouldn't do anything less then :ERROR as Slack only allows one message
  #  per minute.
  #
  ## Default:
  config.logger.level = :ERROR

  ## Slack Client
  # -------------
  #
  # The client in which you would like to use to communicate with slack
  # Note: slack-ruby-client is imported with this gem and is recommended
  #
  ## Default:
  config.client = Slack::Web::Client.new(:token => Rails.application.secrets.slack_api_token)


  ## Slack Channel
  #  -------------
  #
  #  The channel for which you want the error message to appear on
  #
  ## Default:
  config.channel = '#test'
end