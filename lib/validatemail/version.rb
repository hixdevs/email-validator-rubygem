# frozen_string_literal: true

module Validatemail
  class Version
    STRING = File.read(__dir__.sub(%r{lib/validatemail$}, "VERSION"))
  end
end
