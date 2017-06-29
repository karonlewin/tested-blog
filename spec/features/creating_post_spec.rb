require 'rails_helper'

RSpec.describe "CreatingPosts", type: :feature do

  before do
    @john = User.create!(email: "john@example.com", password: "password")
    visit '/'
    click_link "Sign in"
    fill_in "Email", with: @john.email
    fill_in "Password", with: @john.password
    click_button "Log in"
  end

  scenario "A user create a new post" do
      visit root_path
      click_link "New Post"
      fill_in "Title", with: "Title of post"
      fill_in "Content", with: "Content of post"
      click_button "Create Post"
      expect(page).to have_content("Post has been created")
      expect(page.current_path).to eq(posts_path)
  end

  scenario "A user fails to create a new post" do
    visit root_path
    click_link "New Post"
    fill_in "Title", with: ""
    fill_in "Content", with: ""
    click_button "Create Post"
    expect(page).to have_content("Post has not been created")
    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Content can't be blank")
  end

end
