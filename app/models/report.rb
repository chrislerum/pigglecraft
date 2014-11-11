class Report < ActiveRecord::Base
  mount_uploader :screenshot, ScreenshotUploader
  validates :player, :description, presence: true
end
