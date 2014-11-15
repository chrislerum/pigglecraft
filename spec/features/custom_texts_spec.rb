require 'rails_helper'

describe "Custom Texts", :type => :feature do
  it 'lets an admin edit the news on front page' do
    admin_user = create(:admin_user, password: 'secretxx')
    visit admin_root_path
    fill_in 'Email', with: admin_user.email
    fill_in 'Password', with: 'secretxx'
    click_button 'Login'
    expect(page).to have_text 'Signed in successfully'
    click_link 'Custom Texts'
    click_link 'New Custom Text'
    fill_in 'Name', with: 'front_page_news'
    fill_in 'The text', with: 'test body of news'
    click_button 'Create Custom text'
    pageme
    visit root_path
    expect(page).to have_text 'test body of news'

    #visit report_abuse_path
    #click_link 'Report Abuse'
    #fill_in 'report_player', with: 'Frank'
    #fill_in 'report_description', with: 'He was calling me mean names.'
    #attach_file 'report_screenshot', 'spec/features/selena.jpg'
    #click_button 'Create Report'
    #expect(page).to have_content 'Thank you'
  end
end
