# frozen_string_literal: true

RSpec.shared_context "Whoisxml response" do
  let(:response_body) do
    { username: "wscourge",
      domain: "gmail.com",
      emailAddress: "wscourge@gmail.com",
      formatCheck: "true",
      smtpCheck: "true",
      dnsCheck: "true",
      freeCheck: "true",
      disposableCheck: "false",
      catchAllCheck: "false",
      mxRecords: ["alt4.gmail-smtp-in.l.google.com.",
                  "alt2.gmail-smtp-in.l.google.com.",
                  "alt3.gmail-smtp-in.l.google.com.",
                  "gmail-smtp-in.l.google.com.",
                  "alt1.gmail-smtp-in.l.google.com.",],
      audit: { auditCreatedDate: "2023-02-27 10:11:36 UTC",
               auditUpdatedDate: "2023-02-27 10:11:36 UTC", }, }.to_json
  end
end
