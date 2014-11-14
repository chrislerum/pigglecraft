class CustomText < ActiveRecord::Base
  validates :name, :the_text, presence: true
end
