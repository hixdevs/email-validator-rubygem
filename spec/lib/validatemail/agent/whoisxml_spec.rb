# frozen_string_literal: true

RSpec.describe Validatemail::Agent::Whoisxml do
  it_behaves_like("Validatemail::Agent::ABase") do
    include_context("Whoisxml attributes")
    include_context("Whoisxml response")
    let(:api_url) { :whoisxml_url }
    let(:api_key) { :whoisxml_api_key }
  end
end
