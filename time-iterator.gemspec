# frozen_string_literal: true

require_relative "lib/time/iterator/version"

Gem::Specification.new do |spec|
  spec.name = "time-iterator"
  spec.version = Time::Iterator::VERSION
  spec.authors = ["Michael G. Schwern"]
  spec.email = ["schwern@pobox.com"]

  spec.summary = "Iterate using Time objects."
  spec.description = "Easy iterating over various periods of time."
  spec.homepage = "https://github.com/schwern/ruby-time-iterator"
  spec.required_ruby_version = "~> 3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/schwern/ruby-time-iterator"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.add_dependency "activesupport", ">= 6"
end
