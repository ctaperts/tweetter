require 'test_helper'

class TwitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twits_index_url
    assert_response :success
  end

  test "should get show" do
    get twits_show_url
    assert_response :success
  end

  test "should get edit" do
    get twits_edit_url
    assert_response :success
  end

  test "should get new" do
    get twits_new_url
    assert_response :success
  end

  test "should get _form" do
    get twits__form_url
    assert_response :success
  end

end
