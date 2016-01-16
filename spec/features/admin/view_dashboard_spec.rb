require 'rails_helper'

feature "Admin Dashboard" do
  scenario "is viewable when signed in" do
    admin = create(:admin)
    sign_in_as(admin)

    expect(page).to have_content("Admin Dashboard")
  end

  scenario "is not visible to non admin" do
    user = create(:user)
    sign_in_as(user)

    visit admin_dashboard_path
    expect(page).not_to have_content("Admin Dashboard")
    expect(page).to have_content("Hello World")
  end
end
