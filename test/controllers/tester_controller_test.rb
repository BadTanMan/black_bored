require 'test_helper'

class TesterControllerTest < ActionDispatch::IntegrationTest

  test "should get test1" do
    get tester_index1_url
    assert_response :success
  end

  test "should get test2" do
    get tester_index2_url
    assert_response :success
  end

  test "should get test3" do
    get tester_index3_url
    assert_response :success
  end

  test "should get test4" do
    get tester_index4_url
    assert_response :success
  end

  test "should get test5" do
    get tester_index5_url
    assert_response :success
  end

  test "should get test6" do
    get tester_index6_url
    assert_response :success
  end

  test "should get test7" do
    get tester_index7_url
    assert_response :success
  end

end
