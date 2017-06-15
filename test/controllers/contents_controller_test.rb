require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get contents" do
    get contents_url
    assert_response :success
  end

  test "should get contents edit" do
    get edit_content_url(Content.all.first.id)
    assert_response :success
  end

  test "should get contents new" do
    get new_content_url
    assert_response :success
  end

end
