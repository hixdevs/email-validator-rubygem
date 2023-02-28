# frozen_string_literal: true

RSpec.shared_context "Reacher response" do
  let(:response_body) do
    {
      input: "wscourge@gmail.com",
      is_reachable: "safe",
      misc: {
        is_disposable: false,
        is_role_account: false,
      },
      mx: {
        accepts_mail: true,
        records: [
          "alt3.gmail-smtp-in.l.google.com.",
          "gmail-smtp-in.l.google.com.",
          "alt1.gmail-smtp-in.l.google.com.",
          "alt4.gmail-smtp-in.l.google.com.",
          "alt2.gmail-smtp-in.l.google.com.",
        ],
      },
      smtp: {
        can_connect_smtp: true,
        has_full_inbox: false,
        is_catch_all: false,
        is_deliverable: false,
        is_disabled: false,
      },
      syntax: {
        domain: "gmail.com",
        is_valid_syntax: true,
        username: "someone",
      },
    }
      .to_json
  end
end
