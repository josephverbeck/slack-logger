module SlackLogger
  class Formatter < ::Logger::Formatter

    attr_accessor :format

    def initialize
      super
    end

    def format
      @format ||= Proc.new { | severity, time, _progname, msg | { channel: SlackLogger.channel,
                  attachments: [{
                                    pretext: msg.to_s,
                                    ts: "#{time}",
                                    fields: [
                                        {
                                            title: "Project",
                                            value: "#{Rails.application.class.parent_name}",
                                            short: true
                                        },
                                        {
                                            title: "Environment",
                                          value: "#{Rails.env}",
                                          short: true
                                        }
                                    ],
                                    color: "#F35A00"
                                }].to_json,
                  as_user: true
      }}
    end

    def call(severity, time, progname, msg)
      format.call(severity, time, progname, msg)
    end
  end
end