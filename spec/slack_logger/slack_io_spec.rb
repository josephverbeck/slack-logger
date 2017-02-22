RSpec.describe SlackLogger::SlackIO do

  let(:slack_io) { SlackLogger::SlackIO }

  context 'when initialized' do
    it { expect(slack_io).to respond_to(:close)}
    it { expect(slack_io.close).to be_truthy }
    it { expect(slack_io).to respond_to(:write).with(1).argument }
  end

  context 'when writing and message doesnt exist' do
    it { expect{slack_io.write("")}.not_to raise_error }
    it { expect{slack_io.write(nil)}.not_to raise_error }
  end

  context 'when message is received' do
    let(:slack_client) { Slack::Web::Client.new(:token => Rails.application.secrets.slack_api_token) }
    before { allow(slack_client).to receive(:auth_test).and_return(true) }
    before {allow(slack_client).to receive(:chat_postMessage).and_return(true) }
    before { allow(SlackLogger).to receive(:client).and_return(slack_client) }
    it { expect{slack_io.write("test")}.not_to raise_error }
  end

end