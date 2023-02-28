# frozen_string_literal: true

RSpec.shared_context "Validatemail::Config" do
  let(:config) { instance_double(Validatemail::Config) }

  before do
    allow(Validatemail::Config).to receive(:new).with(no_args).and_return(config)
    allow(config).to receive(:abstract_api_key).with(no_args).and_return("abstract_api_key")
    allow(config).to receive(:abstract_url).with(no_args).and_return("abstract_url")
    allow(config).to receive(:apilayer_api_key).with(no_args).and_return("apilayer_api_key")
    allow(config).to receive(:apilayer_url).with(no_args).and_return("apilayer_url")
    allow(config).to receive(:hunter_api_key).with(no_args).and_return("hunter_api_key")
    allow(config).to receive(:hunter_url).with(no_args).and_return("hunter_url")
    allow(config).to receive(:reacher_api_key).with(no_args).and_return("reacher_api_key")
    allow(config).to receive(:reacher_url).with(no_args).and_return("reacher_url")
    allow(config).to receive(:whoisxml_api_key).with(no_args).and_return("whoisxml_api_key")
    allow(config).to receive(:whoisxml_url).with(no_args).and_return("whoisxml_url")
    allow(config).to receive(:zerobounce_api_key).with(no_args).and_return("zerobounce_api_key")
    allow(config).to receive(:zerobounce_url).with(no_args).and_return("zerobounce_url")
  end
end
