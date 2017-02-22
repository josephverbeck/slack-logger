require 'spec_helper'

RSpec.describe SlackLogger::Logger do

  context 'is of type logger' do
    let(:logger) { SlackLogger::Logger }
    it { expect(logger).to be < ::Logger }
  end

  context 'when initialized' do
    let(:logger) { SlackLogger::Logger.new(STDOUT) }
    it {expect(logger).to be_truthy}
    it {expect(logger).to respond_to(:error)}
    it {expect(logger).to respond_to(:debug)}
    it {expect(logger).to respond_to(:fatal)}
    it {expect(logger).to respond_to(:info)}
    it {expect(logger).to respond_to(:warn)}
    it {expect(logger).to respond_to(:add)}
    it {expect(logger).to respond_to(:log)}
  end

end
