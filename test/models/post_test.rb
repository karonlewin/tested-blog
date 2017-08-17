require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "should not save without required fields" do
    post = Post.new
    assert_not post.save
  end

end
