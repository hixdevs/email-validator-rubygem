# frozen_string_literal: true

RSpec.shared_context "Hunter attributes" do
  let(:expected_data) do
    {
      email: "wscourge@gmail.com",
      autocorrect: nil,
      score: 0.88,
      valid: true,
      free: nil,
      first_name: nil,
      last_name: nil,
      validated_by: "Hunter",
    }
  end
end
