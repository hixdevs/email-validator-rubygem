# frozen_string_literal: true

module Validatemail
  module Agent
    class Abstract < Validatemail::Agent::ABase
      PRIORITY = 0
      VALID = "DELIVERABLE"

      def autocorrect
        body[:autocorrect]
      end

      def score
        body[:quality_score].to_f
      end

      def first_name
        nil
      end

      def last_name
        nil
      end

      def free
        body[:is_free_email][:value]
      end

      def valid
        body[:is_valid_format][:value] && body[:is_smtp_valid][:value] && body[:deliverability] == VALID
      end

      def request_query
        { api_key: api_key, email: email }
      end
    end
  end
end
