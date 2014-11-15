class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
  validates :email, :username, presence: true, uniqueness: true

  def forem_name
    username
  end
end
