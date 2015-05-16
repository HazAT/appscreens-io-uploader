require 'appscreensIoUploader/version'
require 'appscreensIoUploader/device_types'
require 'appscreensIoUploader/runner'
require 'appscreensIoUploader/screenshot'
require 'appscreensIoUploader/uploader'
#
require 'fastlane_core'
#
module AppscreensIoUploader
  Helper = FastlaneCore::Helper # you gotta love Ruby: Helper.* should use the Helper class contained in FastlaneCore
end
