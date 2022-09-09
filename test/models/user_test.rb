require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user must logged in" do 
    user.email = "ayesha@example.com"
    user.password = "ayesha"
  end
end
