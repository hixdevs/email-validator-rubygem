# frozen_string_literal: true

RSpec.shared_context "Apilayer response" do
  let(:response_body) do
    { email: "wscourge@gmail.com",
      did_you_mean: "",
      user: "wscourge",
      domain: "gmail.com",
      syntax_valid: true,
      is_disposable: false,
      is_role_account: false,
      is_catch_all: false,
      is_deliverable: true,
      can_connect_smtp: true,
      is_inbox_full: "",
      is_disabled: "",
      mx_records: true,
      free: true,
      score: 0.64, }.to_json
  end
end
