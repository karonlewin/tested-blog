require 'rails_helper'

RSpec.describe "ReadingPosts", type: :feature do

  it "show posts list when access the index page" do
    visit root_path
    page.should have_content('Posts')
  end

end
