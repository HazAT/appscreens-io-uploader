# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appscreensIoUploader/version'

Gem::Specification.new do |spec|
  spec.name          = "appscreens-io-uploader"
  spec.version       = AppscreensIoUploader::VERSION
  spec.authors       = ["Daniel Griesser"]
  spec.email         = ["daniel.griesser.86@gmail.com"]
  spec.summary       = %q{Upload your screenshots to https://appscreens.io}
  spec.description   = %q{Upload your screenshots to https://appscreens.io}
  spec.homepage      = "https://github.com/HazAT/appscreens-io-uploader"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files = Dir["lib/**/*"] + %w{ bin/appscreens-io-uploader README.md LICENSE }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httmultiparty', '~> 0.3.16' # used for http multipart requests
  spec.add_dependency 'fastlane_core', '>= 0.7.2' # all shared code and dependencies
  spec.add_dependency 'fastimage', '~> 1.6.3' # fetch the image sizes from the screenshots
  spec.add_dependency 'deliver', '> 0.3' # To determine the device type based on a screenshot file

end
