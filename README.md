# Gem `validatemail`, by [hix.dev](https://hix.dev)

[![Gem Version][gem-version-img]][gem-version]
[![Build Status][build-status-img]][build-status]

The `validatemail` gem is used to make sure that provided email addresses are
valid. Providing all ENV variables, you can validate 1.4k email addresses
monthly, for free.

- [Abstract][abstract_home]: 100 / month
- [API Layer][apilayer_home]: 100 / month
- [Hunter][hunter_home]: 50 / month
- [Reacher][reacher_home]: 50 / month
- [WhoisXML][whoisxml_home]: 1000 / month
- [Zerobounce][zerobounce_home]: 100 / month

Every time it runs, it hits the randomly selected API and returns the normalized
data. If the HTTP response code is other than 200, it hits the next one, and so
on.

## Usage

1. Update to the latest Ruby 3.2.1, using any of the Ruby version managers.
2. Do one of the following:
  - Run `gem install validatemail`
  - Run `bundle add validatemail`
3. In your runtime, add following `ENV` variables:
  - `VALIDATEMAIL_ABSTRACT_API_KEY` - [see the documentation][abstract_docs]
  - `VALIDATEMAIL_APILAYER_API_KEY` - [see the documentation][apilayer_docs]
  - `VALIDATEMAIL_HUNTER_API_KEY` - [see the documentation][hunter_docs]
  - `VALIDATEMAIL_REACHER_API_KEY` - [see the documentation][reacher_docs]
  - `VALIDATEMAIL_ZEROBOUNCE_API_KEY` - [see the documentation][zerobounce_docs]
  - `VALIDATEMAIL_WHOISXML_API_KEY` - [see the documentation][whoisxml_docs]
4. Use the following code
```
$ validatemail = Validatemail::API.new("valid@example.com")
$ validatemail.ok?
> true | false
$ validatemail.data
> Validatemail::Struct(
  email: string
  valid: boolean
  validated_by: enum("Abstract" | "Apilayer" | "Hunter" | "Reacher" | "Whoisxml" | "Zerobounce")
  autocorrect: string | null
  score: float | null
  first_name: string | null
  last_name: string | null
  free: boolean | null
)
```

## Development

Clone the repository and run `bundle install`. An example script to play around
with the development gem version would be:

### _Gemfile_

```ruby
source "https://rubygems.org"

gem "validatemail", path: "/path/to/email-validator-rubygem"
```

### _validatemail.rb_

```ruby
require "bundler/setup"
require "validatemail"

ENV['VALIDATEMAIL_ABSTRACT_API_KEY'] = "YOUR_KEY"
ENV['VALIDATEMAIL_APILAYER_API_KEY'] = "YOUR_KEY"
ENV['VALIDATEMAIL_HUNTER_API_KEY'] = "YOUR_KEY"
ENV['VALIDATEMAIL_REACHER_API_KEY'] = "YOUR_KEY"
ENV['VALIDATEMAIL_ZEROBOUNCE_API_KEY'] = "YOUR_KEY"
ENV['VALIDATEMAIL_WHOISXML_API_KEY'] = "YOUR_KEY"

validatemail = Validatemail::API.new("valid@example.com")
binding.pry
```

with those 2 files in place, you can
```
bundle install
ruby validatemail.rb
```

## Tests

Run `bundle exec rspec`.

## Code Quality

1. Run `bundle exec rubocop -a`.
2. Run `bundle exec fasterer`.

[gem-version]: https://rubygems.org/gems/validatemail
[gem-version-img]: https://badge.fury.io/rb/validatemail.svg
[build-status]: https://circleci.com/gh/hixdevs/validatemail/tree/prd
[build-status-img]: https://circleci.com/gh/hixdevs/validatemail/tree/prd.svg?style=shield
[abstract_home]: https://www.abstractapi.com
[apilayer_home]: https://apilayer.com
[hunter_home]: https://hunter.io
[reacher_home]: https://reacher.email
[whoisxml_home]: https://whoisxmlapi.com
[zerobounce_home]: https://www.zerobounce.net
[abstract_docs]: https://app.abstractapi.com/api/email-validation/documentation
[apilayer_docs]: https://apilayer.com/marketplace/email_verification-api#documentation-tab
[hunter_docs]: https://hunter.io/api-keys
[reacher_docs]: https://app.reacher.email/dashboard
[zerobounce_docs]: https://emailverification.whoisxmlapi.com/api/documentation/making-requests
[whoisxml_docs]: https://www.zerobounce.net/docs/email-validation-api-quickstart#validate_emails__v2__
