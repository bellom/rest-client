require 'test_helper'

class MicropostsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get microposts_destroy_url
    assert_response :success
  end

end
