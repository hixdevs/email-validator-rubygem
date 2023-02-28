# frozen_string_literal: true

RSpec.shared_context "Abstract attributes" do
  let(:expected_data) do
    {
      email: "wscourge@gmail.com",
      autocorrect: "",
      score: 0.7,
      valid: true,
      free: true,
      first_name: nil,
      last_name: nil,
      validated_by: "Abstract",
    }
  end
end
