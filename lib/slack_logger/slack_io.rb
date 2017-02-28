module SlackLogger
  class SlackIO

    def self.close
      true
    end

    def self.write(message)
      unless message.blank?
        client = SlackLogger.client
        client.auth_test
        client.chat_postMessage(message)
      end
    end

  end

end