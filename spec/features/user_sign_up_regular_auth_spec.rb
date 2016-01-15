require 'rails_helper'

feature 'Autherization', js: true do
  scenario 'User signs up with regular auth' do
    visit root_path
    expect(page).to have_content 'Adventure Data'
    expect(page).to have_content 'Create Account'
    expect(page).to have_content 'Sign In'

    expect(page).not_to have_css '.sign-in-form'
    find('.collapsible-header', :text => 'Sign In').click
    expect(page).to have_css '.sign-in-form'

    expect(page).not_to have_css '.sign-up-form'
    find('.collapsible-header', :text => 'Create Account').click
    expect(page).to have_css '.sign-up-form'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password1234'
    fill_in 'Password confirmation', with: 'password1234'

    click_on 'Sign up'
    expect(page).to have_content 'Hello World'
  end

  scenario 'User signs in with regular auth', js: true do
    create(:user, email: 'test@test.com', password: 'password1234')
    visit root_path

    find('.collapsible-header', :text => 'Sign In').click
    expect(page).to have_css '.sign-in-form'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password1234'

    click_on 'Log in'
    expect(page).to have_content 'Hello World'
  end
end
