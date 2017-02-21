module SlackLogger
  class SlackIO

    def self.close
      true
    end

    def self.write(message)
      p "SlackLogger reporting " + message
    end

  end

end