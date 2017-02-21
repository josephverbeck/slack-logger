module SlackLogger
  class Logger < ::Logger

    def initialize(logdev)
      super(logdev)
    end

    class << self
      delegate :error, :debug, :fatal, :info, :warn, :add, :log, :to => :instance
    end

  end
end