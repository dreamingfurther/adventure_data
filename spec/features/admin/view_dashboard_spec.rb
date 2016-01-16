require 'rails_helper'

feature "Admin Dashboard" do
  scenario "is viewable when signed in" do
    admin = create(:admin)
    sign_in_as(admin)

    expect(page).to have_content("Admin Dashboard")
  end
end
