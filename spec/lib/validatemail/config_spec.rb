# frozen_string_literal: true

RSpec.describe Validatemail::Config, type: :config do
  subject(:config) { described_class.new }

  # https://github.com/palkan/anyway_config#test-helpers
  specify do
    # Ensure that the env vars are set to the specified
    # values within the block and reset to the previous values
    # outside of it.
    with_env(
      "VALIDATEMAIL_ABSTRACT_API_KEY" => "abstract_api_key",
      "VALIDATEMAIL_APILAYER_API_KEY" => "apilayer_api_key",
      "VALIDATEMAIL_HUNTER_API_KEY" => "hunter_api_key",
      "VALIDATEMAIL_REACHER_API_KEY" => "reacher_api_key",
      "VALIDATEMAIL_ZEROBOUNCE_API_KEY" => "zerobounce_api_key",
      "VALIDATEMAIL_WHOISXML_API_KEY" => "whoisxml_api_key",
    ) do
      expect(config).to have_attributes(
        abstract_api_key: "abstract_api_key",
        apilayer_api_key: "apilayer_api_key",
        hunter_api_key: "hunter_api_key",
        reacher_api_key: "reacher_api_key",
        zerobounce_api_key: "zerobounce_api_key",
        whoisxml_api_key: "whoisxml_api_key",
      )
      expect(config.abstract_url).to be_a(String)
      expect(config.apilayer_url).to be_a(String)
      expect(config.hunter_url).to be_a(String)
      expect(config.reacher_url).to be_a(String)
      expect(config.zerobounce_url).to be_a(String)
      expect(config.whoisxml_url).to be_a(String)
    end
  end
end
