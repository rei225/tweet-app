require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get post_home_url
    assert_response :success
    assert_select "title", "Home | Tweet App"
  end

  test "should get help" do
    get post_help_url
    assert_response :success
    assert_select "title", "Help | Tweet App"
  end

  test "should get about" do 
    get post_about_url 
    assert_response :success 
    assert_select "title", "About | Tweet App"
  end

end
