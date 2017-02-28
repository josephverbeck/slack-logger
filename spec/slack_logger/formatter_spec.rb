require 'spec_helper'

RSpec.describe SlackLogger::Formatter do

  context 'is of type logger' do
    let(:logger) { SlackLogger::Formatter }
    it { expect(logger).to be < ::Logger::Formatter }
  end

  context 'default format' do
    let(:logger) { SlackLogger::Formatter.new.call(:ERROR, Time.now.to_i, "Tester", "Failed") }
    it{expect(logger).to be_truthy }
  end

  context 'new format' do
    let(:logger) { SlackLogger::Formatter.new }
    it "rewrites format as new proc" do
      logger.format = -> { "test" }
      expect(logger.format.call).to eq("test")
    end
  end
end