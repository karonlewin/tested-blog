require 'rails_helper'

RSpec.describe "Listing posts:", type: :feature do

  before do
    @post1 = Post.create(title: "The first post", content: "Lorem ipsum dolor site amet, consectetur.")
    @post2 = Post.create(title: "The second post", content: "Pellentesque ac ligula in tellus feugiat.")
  end

  it "A user lists all posts" do
    visit root_path
    expect(page).to have_content(@post1.title)
    expect(page).to have_content(@post2.title)
  end

  it "A user read a post" do
    visit root_path
    click_link @post1.title
    expect(page).to have_content(@post1.title)
    expect(page).to have_content(@post1.content)
  end
end
