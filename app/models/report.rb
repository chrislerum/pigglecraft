class Report < ActiveRecord::Base
  mount_uploader :screenshot, ScreenshotUploader
end
