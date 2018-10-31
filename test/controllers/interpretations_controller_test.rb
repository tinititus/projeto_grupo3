require 'test_helper'

class InterpretationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interpretation = interpretations(:one)
  end

  test "should get index" do
    get interpretations_url
    assert_response :success
  end

  test "should get new" do
    get new_interpretation_url
    assert_response :success
  end

  test "should create interpretation" do
    assert_difference('Interpretation.count') do
      post interpretations_url, params: { interpretation: { interpretation: @interpretation.interpretation } }
    end

    assert_redirected_to interpretation_url(Interpretation.last)
  end

  test "should show interpretation" do
    get interpretation_url(@interpretation)
    assert_response :success
  end

  test "should get edit" do
    get edit_interpretation_url(@interpretation)
    assert_response :success
  end

  test "should update interpretation" do
    patch interpretation_url(@interpretation), params: { interpretation: { interpretation: @interpretation.interpretation } }
    assert_redirected_to interpretation_url(@interpretation)
  end

  test "should destroy interpretation" do
    assert_difference('Interpretation.count', -1) do
      delete interpretation_url(@interpretation)
    end

    assert_redirected_to interpretations_url
  end
end
