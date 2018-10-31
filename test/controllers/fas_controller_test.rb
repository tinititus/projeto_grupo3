require 'test_helper'

class FasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fa = fas(:one)
  end

  test "should get index" do
    get fas_url
    assert_response :success
  end

  test "should get new" do
    get new_fa_url
    assert_response :success
  end

  test "should create fa" do
    assert_difference('Fa.count') do
      post fas_url, params: { fa: {  } }
    end

    assert_redirected_to fa_url(Fa.last)
  end

  test "should show fa" do
    get fa_url(@fa)
    assert_response :success
  end

  test "should get edit" do
    get edit_fa_url(@fa)
    assert_response :success
  end

  test "should update fa" do
    patch fa_url(@fa), params: { fa: {  } }
    assert_redirected_to fa_url(@fa)
  end

  test "should destroy fa" do
    assert_difference('Fa.count', -1) do
      delete fa_url(@fa)
    end

    assert_redirected_to fas_url
  end
end
