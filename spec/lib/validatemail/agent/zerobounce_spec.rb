# frozen_string_literal: true

RSpec.describe Validatemail::Agent::Zerobounce do
  it_behaves_like("Validatemail::Agent::ABase") do
    include_context("Zerobounce attributes")
    include_context("Zerobounce response")
    let(:api_url) { :zerobounce_url }
    let(:api_key) { :zerobounce_api_key }
  end
end
