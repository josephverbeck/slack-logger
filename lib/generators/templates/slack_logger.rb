SlackLogger.setup do |config|

  ## Logger
  #  ------
  #
  # The slack logger
  #
  ## Default:
  # config.logger ||= SlackLogger::Logger.new(SlackLogger::SlackIO)

  ## Log Level
  #  ---------
  #
  #  The error level you would like to see in slack
  #
  ## Default:
  # config.logger.level = :INFO

  ## Slack Client
  # -------------
  #
  # The client in which you would like to use to communicate with slack
  # Note: slack-ruby-client is imported with this gem and is recommended
  #
  ## Default:
  # config.client = Slack::Web::Client.new


  ## Slack Channel
  #  -------------
  #
  #  The channel for which you want the error message to appear on
  #
  ## Default:
  # config.channel = nil
end