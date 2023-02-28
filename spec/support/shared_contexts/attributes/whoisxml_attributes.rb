# frozen_string_literal: true

RSpec.shared_context "Whoisxml attributes" do
  let(:expected_data) do
    {
      email: "wscourge@gmail.com",
      autocorrect: nil,
      score: nil,
      valid: true,
      free: true,
      first_name: nil,
      last_name: nil,
      validated_by: "Whoisxml",
    }
  end
end
