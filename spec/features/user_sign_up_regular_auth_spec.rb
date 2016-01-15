require 'rails_helper'

feature 'Sign Up', js: true do
  scenario 'User signs up with regular auth' do
    visit root_path
    expect(page).to have_content 'Adventure Data'
    expect(page).to have_content 'Sign Up'
    expect(page).to have_content 'Sign In'

    expect(page).not_to have_content 'Sign Up Form'
    find('.collapsible-header', :text => 'Sign Up').click
    expect(page).to have_content 'Sign Up Form'

    expect(page).not_to have_content 'Sign In Form'
    find('.collapsible-header', :text => 'Sign In').click
    expect(page).to have_content 'Sign In Form'
  end
end
