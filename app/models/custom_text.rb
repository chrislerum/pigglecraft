class CustomText < ActiveRecord::Base
  validates :name, :the_text, presence: true

  rails_admin do

    object_label_method do
      :custom_label_method
    end
  end

  def custom_label_method
    self.name
  end
end
