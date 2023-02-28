# frozen_string_literal: true

require_relative "lib/validatemail/version"

Gem::Specification.new do |s|
  s.name = "validatemail"
  s.version = Validatemail::Version::STRING
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 3.0.0"
  s.authors = ["Wiktor Plaga"]
  s.description = <<-DESCRIPTION
    Email validator that hits freemium providers one by one and returns
    normalized response.
  DESCRIPTION

  s.email = "hix.dev@tzif.io"
  s.files = Dir.glob("{assets,lib}/**/*", File::FNM_DOTMATCH) + %w[VERSION]
  # s.bindir = "exe"
  # s.executables = ["validatemail"]
  s.homepage = "https://github.com/hixdevs/email-validator-rubygem"
  s.licenses = ["GPL-3.0"]
  s.summary = "Email validation via freemium providers."

  s.metadata = {
    "homepage_uri" => "https://github.com/hixdevs/email-validator-rubygem",
    "changelog_uri" => "https://github.com/hixdevs/email-validator-rubygem/blob/prd/CHANGELOG.md",
    "source_code_uri" => "https://github.com/hixdevs/email-validator-rubygem/",
    "documentation_uri" => "https://github.com/hixdevs/email-validator-rubygem/blob/prd/README.md",
    "bug_tracker_uri" => "https://github.com/hixdevs/email-validator-rubygem/issues",
    "rubygems_mfa_required" => "true",
  }

  s.add_runtime_dependency("activesupport", "~> 7.0")
  s.add_runtime_dependency("anyway_config", "~> 2.2")
  s.add_runtime_dependency("dry-struct", "~> 1.0")
  s.add_runtime_dependency("httparty", "~> 0.20")
  s.add_runtime_dependency("pry", "~> 0.14")

  s.add_development_dependency("fasterer", "~> 0.10")
  s.add_development_dependency("rspec", "~> 3.11")
  s.add_development_dependency("rspec-expectations", "~> 3.12")
  s.add_development_dependency("rubocop", "~> 1.36")
  s.add_development_dependency("rubocop-performance", "~> 1.15")
  s.add_development_dependency("rubocop-rspec", "~> 2.13")
  s.add_development_dependency("simplecov", "~> 0.21")
  s.add_development_dependency("simplecov-cobertura", "~> 2.1")
end
