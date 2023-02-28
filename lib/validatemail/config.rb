# frozen_string_literal: true

module Validatemail
  class Config < Anyway::Config
    attr_config(
      :abstract_api_key,
      :apilayer_api_key,
      :hunter_api_key,
      :reacher_api_key,
      :whoisxml_api_key,
      :zerobounce_api_key,
    )

    # https://app.abstractapi.com/api/email-validation/documentation
    def abstract_url
      "https://emailvalidation.abstractapi.com/v1"
    end

    # https://apilayer.com/marketplace/email_verification-api#documentation-tab
    def apilayer_url
      "https://api.apilayer.com/email_verification"
    end

    # https://hunter.io/api-keys
    def hunter_url
      "https://api.hunter.io/v2/email-verifier"
    end

    # https://app.reacher.email/dashboard
    def reacher_url
      "https://api.reacher.email/v0/check_email"
    end

    # https://emailverification.whoisxmlapi.com/api/documentation/making-requests
    def whoisxml_url
      "https://emailverification.whoisxmlapi.com/api/v2"
    end

    # https://www.zerobounce.net/docs/email-validation-api-quickstart#validate_emails__v2__
    def zerobounce_url
      "https://api.zerobounce.net/v2/validate"
    end
  end
end
