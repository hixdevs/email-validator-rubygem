# frozen_string_literal: true

RSpec.describe Validatemail::Agent::Apilayer do
  it_behaves_like("Validatemail::Agent::ABase") do
    include_context("Apilayer attributes")
    include_context("Apilayer response")
    let(:api_url) { :apilayer_url }
    let(:api_key) { :apilayer_api_key }
  end
end
