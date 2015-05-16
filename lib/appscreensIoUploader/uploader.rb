module AppscreensIoUploader

  class Uploader
    def upload!(project_id, screenshots)
      base_uri = 'http://appscreens.dev'
      api_base_uri = base_uri + '/api/v1'
      screens_uri = '/projects/' + project_id + '/screens'
      #GET /projects/{project_id}/screens
      #Fetch all screens of the project
      response = HTTParty.get(api_base_uri + screens_uri)
      if response.code == 200
        screens = JSON.parse(response.body)
        screens.each_with_index do |screen, index|
          screenshot_path = screenshots[index].path
          Helper.log.info "uploading screenshot #{screenshot_path}"
          # POST /projects/{project_id}/screens/{screen_id}/image
          upload_response = HTTMultiParty.post(api_base_uri + screens_uri + '/' + screen['id'] + '/image', :query => {
            :image => File.new(screenshot_path)
          })
          if response.code == 200
            Helper.log.info "successfully uploaded screenshot #{screenshot_path}".green
          else
            Helper.log.error "error while uploading screenshot #{screenshot_path} #{upload_response.body}"
          end

        end
      else
        Helper.log.error "not able to fetch your project, make sure it exsists under #{base_uri}/#{project_id}"
        return
      end

      Helper.log.info "successfully uplopaded all your screens ... you can edit them under #{base_uri}/#{project_id}".green
    end
  end
end
