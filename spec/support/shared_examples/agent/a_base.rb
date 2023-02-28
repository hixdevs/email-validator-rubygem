# frozen_string_literal: true

RSpec.shared_examples "Validatemail::Agent::ABase" do
  subject(:instance) { described_class.new(email) }

  # requires:
  # let(:api_key)
  # let(:api_url)
  # let(:response_body)
  # let(:expected_data)

  include_context("Validatemail::Config")
  let(:email) { "wscourge@gmail.com" }
  let(:http) { instance_double(HTTParty::Response) }
  let(:response_code) { Array(200..299).sample }

  before do
    allow(HTTParty).to receive(:get).and_return(http)
    allow(HTTParty).to receive(:post).and_return(http)
    allow(http).to receive(:code).and_return(response_code)
    allow(http).to receive(:body).and_return(response_body)
  end

  describe "#data" do
    subject(:data) { instance.data.attributes }

    it { is_expected.to eq(expected_data) }

    it "memoizes @data" do
      # rubocop:disable RSpec/IdenticalEqualityAssertion
      expect(instance.data).to be(instance.data)
      # rubocop:enable RSpec/IdenticalEqualityAssertion
    end
  end

  describe "#ok?" do
    subject(:ok) { instance.ok? }

    context "without config.api_url" do
      before { allow(config).to receive(api_url).with(no_args).and_return(nil) }

      it { is_expected.to be(false) }
    end

    context "without config.api_key" do
      before { allow(config).to receive(api_key).with(no_args).and_return(nil) }

      it { is_expected.to be(false) }
    end

    context "with config.api_url and config.api_key" do
      context "when there's an error" do
        before { allow(http).to receive(:code).with(no_args).and_raise(StandardError) }

        it { is_expected.to be(false) }
      end

      context "when HTTP response code is out of success range" do
        before { allow(http).to receive(:code).with(no_args).and_return(302) }

        it { is_expected.to be(false) }
      end

      context "when HTTP response code is within succes range" do
        it { is_expected.to be(true) }
      end
    end
  end
end
