require 'rails_helper'

describe 'Forems' do
  it "doesn't allow non-forem-admins to administrate" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    #login_admin
    #password = 'urururyt'
    #@user = create :user, password: password
    #sign_in create(:admin_user)
    #visit root_path
    #click_link 'Sign in'
    #fill_in 'Email', with: @user.email
    #fill_in 'Password', with: password
    #click_button 'Sign in'
  end
end
