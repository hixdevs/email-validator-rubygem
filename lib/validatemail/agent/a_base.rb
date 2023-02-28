# frozen_string_literal: true

module Validatemail
  module Agent
    class ABase
      def initialize(email)
        @email = email
        @config = ::Validatemail::Config.new
      end

      def data
        return @data if defined?(@data)

        @data = Validatemail::Struct.new(
          email: email,
          autocorrect: autocorrect,
          score: score,
          valid: valid,
          free: free,
          first_name: first_name,
          last_name: last_name,
          validated_by: self.class.name.demodulize,
        )
      end

      def ok?
        api_url.present? &&
          api_key.present? &&
          http.code.between?(200, 299) &&
          data.is_a?(Validatemail::Struct)
      rescue StandardError => _e
        false
      end

      def body
        return @body if defined?(@body)

        @body = JSON.parse(http.body).deep_symbolize_keys
      end

      def http
        @http ||= HTTParty.get(
          request_url,
          headers: request_headers,
          query: request_query,
        )
      end

      def request_url
        api_url
      end

      def request_headers
        {}
      end

      def request_query
        {}
      end

      private

      attr_reader :email, :config

      def api_url
        config.public_send("#{name}_url")
      end

      def api_key
        config.public_send("#{name}_api_key")
      end

      def name
        self.class.name.demodulize.downcase
      end
    end
  end
end
