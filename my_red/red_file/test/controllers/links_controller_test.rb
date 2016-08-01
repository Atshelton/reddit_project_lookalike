require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end

  test "user can add link" do
skip
    user = User.create("alex")
    assert_equal "alex", user

  end
end
