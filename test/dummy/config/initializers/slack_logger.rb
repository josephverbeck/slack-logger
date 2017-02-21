SlackLogger.setup do |config|

  config.token = -> {Rails.application.secrets.secret_key_base }

  config.channel = '#test_channel'
end