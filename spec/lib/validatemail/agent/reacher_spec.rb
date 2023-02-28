# frozen_string_literal: true

RSpec.describe Validatemail::Agent::Reacher do
  it_behaves_like("Validatemail::Agent::ABase") do
    include_context("Reacher attributes")
    include_context("Reacher response")
    let(:api_url) { :reacher_url }
    let(:api_key) { :reacher_api_key }
  end
end
