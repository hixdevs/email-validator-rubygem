# frozen_string_literal: true

module Validatemail
  module Agent
    class Zerobounce < Validatemail::Agent::ABase
      PRIORITY = 1
      VALID = "valid"

      def autocorrect
        body[:did_you_mean]
      end

      def score
        nil
      end

      def first_name
        body[:firstname]
      end

      def last_name
        body[:lastname]
      end

      def free
        body[:free_email]
      end

      def valid
        body[:status] == VALID
      end

      def request_query
        { api_key: api_key, email: email, ip_address: "0.0.0.0" }
      end
    end
  end
end
