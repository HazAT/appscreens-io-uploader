require 'deliver'
require 'fastimage'
require 'httmultiparty'

module AppscreensIoUploader
  class Runner

    def run(path, project_id, screensSize)
      screenshots = Dir.glob("#{path}/**/*.{png,PNG}")

      screenshots_to_upload = Array.new
      prevHeight = 0
      maxScreens = 5

      if (project_id.length != 10)
        Helper.log.error "No valid ProjectId '#{project_id}' must be exactly 10 chars (copy it from your appscreens.io URL)"
        return
      end

      if screenshots.count > 0
        Helper.log.info "Using '#{screensSize}' as ScreenSize"

        screenshots.each do |full_path|
          next if full_path.include?"_framed.png"
          next if full_path.include?".itmsp/" # a package file, we don't want to modify that
          next if full_path.include?"device_frames/" # these are the device frames the user is using

          begin
            screenshot = Screenshot.new(full_path)
            if screensSize == screenshot.screen_size && screenshots_to_upload.count < maxScreens
              if !screenshot.is_portrait?
                raise "appscreens.io only supports PORTRAIT Orientation for now".red
              end
              if !screenshot.is_supported_screen_size?
                raise "appscreens.io only supports 4.7inch,5inch and 5.5inch screen sizes".red
              end
              screenshots_to_upload << screenshot
            end
          rescue => ex
            Helper.log.error ex
          end
        end

        if screenshots_to_upload.count == 0
          Helper.log.error "Could not find any screensshots that fit the spec, please check again".red
        else
          uploader = Uploader.new
          uploader.upload!(project_id, screenshots_to_upload)
        end
      else
        Helper.log.error "Could not find screenshots".red
      end
    end
  end
end
