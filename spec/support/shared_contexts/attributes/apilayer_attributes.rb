# frozen_string_literal: true

RSpec.shared_context "Apilayer attributes" do
  let(:expected_data) do
    {
      email: "wscourge@gmail.com",
      autocorrect: "",
      score: 0.64,
      valid: true,
      free: true,
      first_name: nil,
      last_name: nil,
      validated_by: "Apilayer",
    }
  end
end
