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
                                  text: "",
                                  attachments: [{
                                                    fallback: "Required plain-text summary of the attachment.",
                                                    pretext: message.to_s,
                                                    tittle: "#{Rails.application.class.parent_name}",
                                                    footer: "#{Rails.application.class.parent_name}",
                                                    ts: "#{Time.now.utc.to_i}"
                                               }.to_json],
                                  as_user: true})
    end

  end

end