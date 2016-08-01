require 'test_helper'



class UsersControllerTest < ActionController::TestCase

  test "can create new user" do
    user = User.create!(params["user"]["alex"])
    assert_equal "alex", user
  end

end
