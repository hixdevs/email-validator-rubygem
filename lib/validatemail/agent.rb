# frozen_string_literal: true

Dir[__FILE__.sub(/\.rb$/, "/**/*.rb").to_s].each { |rb| require rb }

module Validatemail
  module Agent; end
end
