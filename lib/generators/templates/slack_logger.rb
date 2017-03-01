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
  #  Note: We support all log levels, but you shouldn't do anything less then :ERROR as Slack only allows one message
  #  per minute.
  #
  ## Default:
  # config.logger.level = :ERROR

  ## Slack Client
  # -------------
  #
  # The client in which you would like to use to communicate with slack
  # Note: slack-ruby-client is imported with this gem and is recommended
  #
  ## Default:
  # config.client = Slack::Web::Client.new(:token => Rails.application.secrets.slack_api_token)


  ## Slack Format
  #  ------------
  #
  # The format of the message you would like to appear on slack.  By default it is set to:
  # Proc.new { |severity, datetime, _progname, msg |
  #   {
  #           channel: SlackLogger.channel,
  #           attachments: [{
  #                             pretext: msg.to_s,
  #                             ts: "#{datetime}",
  #                             fields: [
  #                                 {
  #                                     title: "Project",
  #                                     value: "#{Rails.application.class.parent_name}",
  #                                     short: true
  #                                 },
  #                                 {
  #                                     title: "Environment",
  #                                     value: "#{Rails.env}",
  #                                     short: true
  #                                 }
  #                             ],
  #                             color: "#F35A00"
  #                         }].to_json,
  #           as_user: true}
  # }
  # Please use a Proc if you would like to set format to something else
  # Example: SlackLogger::Formatter.new.format = -> {}
  #
  # Comment out the below
  # config.logger.formatter = SlackLogger::Formatter.new.format

  ## Slack Channel
  #  -------------
  #
  #  The channel for which you want the error message to appear on
  #
  ## Default:
  # config.channel = nil
end