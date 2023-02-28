# frozen_string_literal: true

require "active_support/all"
require "anyway_config"
require "dry-struct"
require "httparty"
require "json"
require "pry"

require_relative "validatemail/config"
require_relative "validatemail/types"
require_relative "validatemail/struct"
require_relative "validatemail/agent"
require_relative "validatemail/api"
require_relative "validatemail/version"

module Validatemail; end
