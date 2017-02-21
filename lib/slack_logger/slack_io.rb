module SlackLogger
  class SlackIO

    def self.close
      true
    end

    def self.write(message)
      client = SlackLogger.client
      client.auth_test
      client.chat_postMessage({
                                  channel: SlackLogger.channel,
                                  text: {attachments: [{
                                                           pretext: message.to_s,
                                                           ts: "#{Time.now.utc.to_i}",
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
                                                       }]}.to_json,
                                  as_user: true})
    end

  end

end