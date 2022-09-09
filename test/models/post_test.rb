require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "user must exits" do 
  @post = post.create(title: "my first title", content: "my first app using testing")
   assert @post.valid?
end

test "title must exits" do 
  @post = post.create(title: " ", content: "my first app using testing")
   assert @post.valid?
end

test "title must not be too short" do 
  @post = post.create(title: "sdf", content: "my first app using testing")
   assert @post.valid?
end

test "content must exists" do 
  @post = post.create(title: "my first title", content: "")
   assert @post.valid?
end

test "content must not be too short" do 
  @post = post.create(title: "my first title", content: "my")
   assert @post.valid?
end
end