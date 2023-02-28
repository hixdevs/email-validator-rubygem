# frozen_string_literal: true

module Validatemail
  module Agent
    class Whoisxml < Validatemail::Agent::ABase
      PRIORITY = 1
      API_TRUE = "true"
      API_FALSE = "false"

      def autocorrect
        nil
      end

      def score
        nil
      end

      def first_name
        nil
      end

      def last_name
        nil
      end

      def free
        body[:freeCheck] == API_TRUE
      end

      def valid
        body[:formatCheck] == API_TRUE &&
          body[:smtpCheck] == API_TRUE &&
          body[:dnsCheck] == API_TRUE &&
          body[:disposableCheck] == API_FALSE &&
          body[:catchAllCheck] == API_FALSE
      end

      def request_query
        { apiKey: api_key, emailAddress: email }
      end
    end
  end
end
