require 'rails_helper'

RSpec.describe "CreatingPosts", type: :feature do

  scenario "A user create a new post" do
      visit root_path
      click_link "New Post"
      fill_in "Title", with: "Title of post"
      fill_in "Content", with: "Content of post"
      click_button "Create Post"
      expect(page).to have_context("Post has been created")
      expect(page.current_path).to eq(post_path)
  end

end
