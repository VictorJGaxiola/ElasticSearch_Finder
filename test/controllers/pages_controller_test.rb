require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get maps" do
    get :maps
    assert_response :success
  end

end
