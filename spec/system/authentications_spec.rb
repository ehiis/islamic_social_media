require 'rails_helper'

RSpec.describe "Authentications", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "have Sign up button" do
    visit root_path
    expect(page).to have_link("Sign up", href: user_registration_path)
  end

  it "have Log in button" do
    visit root_path
    expect(page).to have_link("Log in", href: new_user_session_path)
  end

  it "does not have Sign up button when logged in" do
    sign_in create(:user)
    visit root_path
    expect(page).not_to have_link("Sign up", href: user_registration_path)
  end

  it "does not have Log in button when logged in" do
    sign_in create(:user)
    visit root_path
    expect(page).not_to have_link("Log in", href: new_user_session_path)
  end
end
