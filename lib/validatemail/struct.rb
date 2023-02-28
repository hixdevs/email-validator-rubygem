# frozen_string_literal: true

module Validatemail
  class Struct < Dry::Struct
    attribute(:email, Types::Strict::String)
    attribute(:valid, Types::Strict::Bool)
    attribute(:validated_by, Types::Strict::String.enum(
                               "Abstract",
                               "Apilayer",
                               "Hunter",
                               "Reacher",
                               "Whoisxml",
                               "Zerobounce",
                             ),)
    attribute(:autocorrect, Types::Strict::String.optional.default(nil))
    attribute(:score, Types::Strict::Float.optional.default(nil))
    attribute(:first_name, Types::Strict::String.optional.default(nil))
    attribute(:last_name, Types::Strict::String.optional.default(nil))
    attribute(:free, Types::Strict::Bool.optional.default(nil))
  end
end
