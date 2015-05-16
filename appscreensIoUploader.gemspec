# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appscreensIoUploader/version'

Gem::Specification.new do |spec|
  spec.name          = "appscreensIoUploader"
  spec.version       = AppscreensIoUploader::VERSION
  spec.authors       = ["Daniel Griesser"]
  spec.email         = ["daniel.griesser.86@gmail.com"]
  spec.summary       = %q{Upload your screenshots to https://appscreens.io}
  spec.description   = %q{Upload your screenshots to https://appscreens.io}
  spec.homepage      = "https://appscreens.io"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files = Dir["lib/**/*"] + %w{ bin/appscreensIoUploader README.md LICENSE }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httmultiparty', '~> 0.3.16' # used for http multipart requests
end
