# frozen_string_literal: true

RSpec.shared_context "Zerobounce response" do
  let(:response_body) do
    { address: "wscourge@gmail.com",
      status: "valid",
      sub_status: "",
      free_email: true,
      did_you_mean: nil,
      account: "wscourge",
      domain: "gmail.com",
      domain_age_days: "10061",
      smtp_provider: "google",
      mx_found: "true",
      mx_record: "gmail-smtp-in.l.google.com",
      firstname: nil,
      lastname: nil,
      gender: nil,
      country: nil,
      region: nil,
      city: nil,
      zipcode: nil,
      processed_at: "2023-02-28 11:10:26.475", }.to_json
  end
end
