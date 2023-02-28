# frozen_string_literal: true

RSpec.shared_context "Abstract response" do
  let(:response_body) do
    { email: "wscourge@gmail.com",
      autocorrect: "",
      deliverability: "DELIVERABLE",
      quality_score: "0.70",
      is_valid_format: { value: true, text: "TRUE" },
      is_free_email: { value: true, text: "TRUE" },
      is_disposable_email: { value: false, text: "FALSE" },
      is_role_email: { value: false, text: "FALSE" },
      is_catchall_email: { value: false, text: "FALSE" },
      is_mx_found: { value: true, text: "TRUE" },
      is_smtp_valid: { value: true, text: "TRUE" }, }.to_json
  end
end
