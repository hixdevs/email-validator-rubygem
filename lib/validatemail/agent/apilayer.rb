# frozen_string_literal: true

module Validatemail
  module Agent
    class Apilayer < Validatemail::Agent::ABase
      PRIORITY = 0

      def autocorrect
        body[:did_you_mean]
      end

      def score
        body[:score].to_f
      end

      def first_name
        nil
      end

      def last_name
        nil
      end

      def free
        body[:free]
      end

      def valid
        body[:syntax_valid] && body[:is_deliverable] && body[:can_connect_smtp]
      end

      def request_url
        "#{api_url}/#{email}"
      end

      def request_headers
        { apikey: api_key }
      end
    end
  end
end
