# frozen_string_literal: true

module Validatemail
  class API
    PROVIDERS = %w[
      Abstract
      Apilayer
      Hunter
      Reacher
      Whoisxml
      Zerobounce
    ].freeze

    attr_reader :email, :data

    def initialize(email)
      @email = email
      @ok = false
      validate!
    end

    def ok?
      ok
    end

    private

    attr_reader :ok

    def validate!
      done = false
      @data = nil
      until done
        agent = providers.delete(providers.sample).new(email)
        done = agent.ok? || providers.empty?
        @data = agent.data if agent.ok?
        @ok = true if agent.ok?
      end
    end

    def providers
      @providers ||= PROVIDERS.map { |provider| "Validatemail::Agent::#{provider}".constantize }
      # .sort { |left, right| left::PRIORITY <=> right::PRIORITY }
    end
  end
end
