class Report < ActiveRecord::Base
  mount_uploader :screenshot, ScreenshotUploader
  validates :player, :description, presence: true

  rails_admin do

    object_label_method do
      :custom_label_method
    end

    list do
      field :player
      field :description
      field :screenshot
    end
  end

  def custom_label_method
    self.player
  end

end
