require 'test_helper'

class SearchUserControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end