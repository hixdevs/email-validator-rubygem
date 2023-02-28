# frozen_string_literal: true

RSpec.describe Validatemail::API do
  subject(:instance) { described_class.new(email) }

  include_context("Validatemail::Agent::Abstract")
  include_context("Validatemail::Agent::Apilayer")
  include_context("Validatemail::Agent::Hunter")
  include_context("Validatemail::Agent::Reacher")
  include_context("Validatemail::Agent::Whoisxml")
  include_context("Validatemail::Agent::Zerobounce")

  let(:email) { "wscourge@gmail.com" }
  let(:ok) { true }
  let(:data) { {} }

  describe "#ok?" do
    subject { instance.ok? }

    context "when any of the agents is OK" do
      let(:ok) { true }

      it { is_expected.to be(true) }
    end

    context "when none of the agents is OK" do
      let(:ok) { false }

      it { is_expected.to be(false) }
    end
  end
end
