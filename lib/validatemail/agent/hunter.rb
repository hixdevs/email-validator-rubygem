# frozen_string_literal: true

module Validatemail
  module Agent
    class Hunter < Validatemail::Agent::ABase
      PRIORITY = 1
      VALID = "valid"

      def autocorrect
        nil
      end

      def score
        body[:data][:score].to_f / 100.0
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
        body[:data][:regexp] && body[:data][:smtp_check] && body[:data][:status] == VALID
      end

      def request_query
        { api_key: api_key, email: email }
      end
    end
  end
end
