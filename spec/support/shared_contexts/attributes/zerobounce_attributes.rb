# frozen_string_literal: true

RSpec.shared_context "Zerobounce attributes" do
  let(:expected_data) do
    {
      email: "wscourge@gmail.com",
      autocorrect: nil,
      score: nil,
      valid: true,
      free: true,
      first_name: nil,
      last_name: nil,
      validated_by: "Zerobounce",
    }
  end
end
