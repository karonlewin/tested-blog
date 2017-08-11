require "rails_helper"

RSpec.feature "Editing an Post" do
  before do
    @post = Post.create(title: "First Post", content: "Lorem Ipsum")
    @john = User.create!(email: "john@example.com", password: "password")
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: @john.email
    fill_in "Password", with: @john.password
    click_button "Log in"
  end

  scenario "A user updates an post" do
    visit "/"
    click_link @post.title
    page.find('#edit-post').click
    fill_in "Title", with: "Updated post"
    fill_in "Content", with: "Lorem Ipsum"
    click_button "Update Post"
    expect(page).to have_content("Post has been updated")
    expect(page.current_path).to eq(post_path(@post))
  end


  # scenario "A user fails to update an post" do
  #   visit "/"
  #   click_link @post.title click_link "Edit post"
  #   fill_in "Title", with: ""
  #   fill_in "Body", with: "Lorem Ipsum"
  #   click_button "Update post"
  #   expect(page).to have_content("post has not been updated")
  #   expect(current_path).to eq(post_path(@post))
  # end
end
