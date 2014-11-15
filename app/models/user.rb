class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable
  validates :email, :username, presence: true, uniqueness: true

  rails_admin do

    object_label_method do
      :custom_label_method
    end

    list do
      field :email
      field :username
      field :forem_admin
      field :admin
    end

    edit do
      field :email
      field :username
      field :forem_admin
      field :admin
    end
  end

  def custom_label_method
    self.username
  end

  def forem_name
    username
  end
end
