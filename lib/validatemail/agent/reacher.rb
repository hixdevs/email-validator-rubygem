# frozen_string_literal: true

module Validatemail
  module Agent
    class Reacher < Validatemail::Agent::ABase
      PRIORITY = 1
      VALID = "safe"

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
        nil
      end

      def valid
        body[:syntax][:is_valid_syntax] && body[:smtp][:can_connect_smtp] && body[:is_reachable] == VALID
      end

      def http
        @http ||= HTTParty.post(
          api_url,
          headers: {
            "Content-Type": "application/json",
            Authorization: api_key,
          },
          data: { to_email: email },
        )
      end
    end
  end
end
