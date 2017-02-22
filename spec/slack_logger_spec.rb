require 'spec_helper'


RSpec.describe SlackLogger do

  context 'is of type module' do
    let(:slack_logger) { SlackLogger }
  end

  context 'when initialized' do
    it { is_expected.to respond_to(:channel)}
    it { is_expected.to respond_to(:token)}
    it { is_expected.to respond_to(:client)}
    it { is_expected.to respond_to(:setup)}
    it { is_expected.to respond_to(:logger)}
  end

end