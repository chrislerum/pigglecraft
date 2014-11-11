require 'rails_helper'

describe 'Forems' do
  it "doesn't allow non-forem-admins to administrate" do
    password = 'urururyt'
    @user = create :user, password: password
    @user.confirm!
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: password
    click_button 'Sign in'
    expect(page).to have_no_content 'Manage Forums'
  end

  it "allows forem-admins to administrate" do
    password = 'urururyt'
    @user = create :forem_admin, password: password
    @user.confirm!
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: password
    click_button 'Sign in'
    expect(page).to have_content 'Manage Forums'
  end
end
