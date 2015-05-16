appscreens.io Uploader
============

[![Twitter: @DanielGri](https://img.shields.io/badge/contact-@DanielGri-blue.svg?style=flat)](https://twitter.com/DanielGri)
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/HazAT/appscreens-io-uploader/blob/master/LICENSE)
[![Gem](https://img.shields.io/gem/v/appscreens-io-uploader.svg?style=flat)](http://rubygems.org/gems/appscreens-io-uploader)


# Features

This gem uploads your app screenshots to [appscreens.io](https://appscreens.io), so you can conveniently style and translate them for the AppStore. It is built to easily integrate with [@KrauseFx](https://twitter.com/KrauseFx)'s [snapshot](https://github.com/KrauseFx/snapshot).

# Installation

Install the gem

    sudo gem install appscreens-io-uploader

# Usage

Call ```appscreens-io-uploader``` in the forlder where your screenshots are located and pass the id of your project (the last part of the URL on https://appscreens.io/new)

    appscreens-io-uploader [project_id]

To upload screens with a different screensize than 5.5 inch use the --screenSize option (use for help ```appscreens-io-uploader existing_project --help```)

    appscreens-io-uploader [project_id] --screenSize=iOS-4-in

## Uninstall

	sudo gem uninstall appscreens-io-uploader
	rm -rf ~/.appscreens-io-uploader

# Thanks
This gem is using pretty much the whole structure of [@KrauseFx](https://twitter.com/KrauseFx) [frameit](https://github.com/fastlane/frameit) and the [fastlane_core](https://github.com/fastlane/fastlane_core) for convenience.

# License
This project is licensed under the terms of the MIT license. See the LICENSE file.
