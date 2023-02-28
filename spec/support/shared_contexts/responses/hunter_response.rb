# frozen_string_literal: true

RSpec.shared_context "Hunter response" do
  let(:response_body) do
    { data: { status: "valid",
              result: "deliverable",
              _deprecation_notice: "Using result is deprecated, use status instead",
              score: 88,
              email: "wscourge@gmail.com",
              regexp: true,
              gibberish: false,
              disposable: false,
              webmail: true,
              mx_records: true,
              smtp_server: true,
              smtp_check: true,
              accept_all: false,
              block: false,
              sources: [], },
      meta: { params: { email: "wscourge@gmail.com" } }, }.to_json
  end
end
