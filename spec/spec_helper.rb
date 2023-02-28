# frozen_string_literal: true

require "pry"
require "simplecov"
require "simplecov-cobertura"

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  [
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::CoberturaFormatter,
  ],
)
SimpleCov.start do
  enable_coverage(:branch)
  refuse_coverage_drop
  add_filter("/assets/")
  add_filter("/bin/")
  add_filter("/spec/")
  add_filter("/tmp/")
  add_filter("/vendor/")
end

Dir["./spec/support/shared_examples/**/*.rb"].each { |shared_example| require shared_example }
Dir["./spec/support/shared_contexts/**/*.rb"].each { |shared_context| require shared_context }

ROOT = __FILE__.gsub("/spec/spec_helper.rb", "")
require_relative "#{ROOT}/lib/validatemail"
require "anyway/testing/helpers"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.disable_monkey_patching!
  config.profile_examples = 0
  # config.warnings = true
  config.order = :defined # TODO: rand
  config.define_derived_metadata do |meta|
    meta[:aggregate_failures] = true
  end

  include Anyway::Testing::Helpers
end
