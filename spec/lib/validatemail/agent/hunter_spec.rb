# frozen_string_literal: true

RSpec.describe Validatemail::Agent::Hunter do
  it_behaves_like("Validatemail::Agent::ABase") do
    include_context("Hunter attributes")
    include_context("Hunter response")
    let(:api_url) { :hunter_url }
    let(:api_key) { :hunter_api_key }
  end
end
