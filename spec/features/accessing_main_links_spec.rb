require 'rails_helper'

RSpec.describe "Accessing main links:", type: :feature do

  scenario "A user clicks in the home link" do
      visit "/pages/about"
      click_link "HOME"
      expect(page).to have_content("A blog developed to learn and practice BDD")
  end

  scenario "A user clicks in the about link" do
    visit root_path
    click_link "ABOUT"
    expect(page).to have_content("The idea behind the blog")
  end

  scenario "A user clicks in the about contact" do
    visit root_path
    click_link "CONTACT"
    expect(page).to have_content("Contact me")
  end

  scenario "A user access home" do
    visit root_path
    expect(page).to have_content("A blog developed to learn and practice BDD")
  end

  scenario "A user access about " do
    visit "/pages/about"
    expect(page).to have_content("The idea behind the blog")
  end

  scenario "A user access contact " do
    visit "/pages/contact"
    expect(page).to have_content("Contact me")
  end

end
