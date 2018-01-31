require 'test_helper'

class RagotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ragot = ragots(:one)
  end

  test "should get index" do
    get ragots_url
    assert_response :success
  end

  test "should get new" do
    get new_ragot_url
    assert_response :success
  end

  test "should create ragot" do
    assert_difference('Ragot.count') do
      post ragots_url, params: { ragot: { anonymous_author: @ragot.anonymous_author, content: @ragot.content } }
    end

    assert_redirected_to ragot_url(Ragot.last)
  end

  test "should show ragot" do
    get ragot_url(@ragot)
    assert_response :success
  end

  test "should get edit" do
    get edit_ragot_url(@ragot)
    assert_response :success
  end

  test "should update ragot" do
    patch ragot_url(@ragot), params: { ragot: { anonymous_author: @ragot.anonymous_author, content: @ragot.content } }
    assert_redirected_to ragot_url(@ragot)
  end

  test "should destroy ragot" do
    assert_difference('Ragot.count', -1) do
      delete ragot_url(@ragot)
    end

    assert_redirected_to ragots_url
  end
end
