appscreensIoUploader
============

[![Twitter: @DanielGri](https://img.shields.io/badge/contact-@DanielGri-blue.svg?style=flat)](https://twitter.com/DanielGri)
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/HazAT/appscreens-io-uploader/blob/master/LICENSE)
[![Gem](https://img.shields.io/gem/v/appscreensIoUploader.svg?style=flat)](http://rubygems.org/gems/appscreensIoUploader)


# Features

Uploads the screenshots generated with [frameit](https://github.com/fastlane/frameit) or just screenshots you took of your device and uploads it to [appscreens.io](https://appscreens.io) so you can style/translate them for the AppStore.

# Installation

Install the gem

    sudo gem install appscreensIoUploader
  
# Usage

Call ```appscreensIoUploader``` in the forlder where your screenshots are located and pass the id of your project (the last part of the URL on https://appscreens.io/[project_id])

    appscreensIoUploader [project_id]

## Uninstall

	sudo gem uninstall appscreensIoUploader
	rm -rf ~/.appscreensIoUploader

# Thanks
This gem is using pretty much the structure of [@KrauseFx](https://twitter.com/KrauseFx) [frameit](https://github.com/fastlane/frameit) and also the [fastlane_core](https://github.com/fastlane/fastlane_core) for convenience.

# License
This project is licensed under the terms of the MIT license. See the LICENSE file.

