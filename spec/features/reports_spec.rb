require 'rails_helper'

describe "Reports", :type => :feature do
  it 'lets you report bad behavior' do
    visit report_abuse_path
    click_link 'Report Abuse'
    fill_in 'report_player', with: 'Frank'
    fill_in 'report_description', with: 'He was calling me mean names.'
    attach_file 'report_screenshot', 'spec/features/selena.jpg'
    click_button 'Create Report'
    expect(page).to have_content 'Thank you'
  end
end
