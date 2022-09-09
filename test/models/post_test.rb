require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "post should be valid" do 
    @post = Post.create(title: "yfgcfcf", content: "post testing in testing file",users.email: "ayesha@example.com")
     assert @post.valid?
   end

end
