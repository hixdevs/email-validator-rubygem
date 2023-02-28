# frozen_string_literal: true

RSpec.describe Validatemail::Agent::Abstract do
  it_behaves_like("Validatemail::Agent::ABase") do
    include_context("Abstract attributes")
    include_context("Abstract response")
    let(:api_url) { :abstract_url }
    let(:api_key) { :abstract_api_key }
  end
end
