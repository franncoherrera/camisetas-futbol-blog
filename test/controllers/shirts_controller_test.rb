require "test_helper"

class ShirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shirt = shirts(:one)
  end

  test "should get index" do
    get shirts_url
    assert_response :success
  end

  test "should get new" do
    get new_shirt_url
    assert_response :success
  end

  test "should create shirt" do
    assert_difference("Shirt.count") do
      post shirts_url, params: { shirt: { birth_year: @shirt.birth_year, shirt_description: @shirt.shirt_description, shirt_title: @shirt.shirt_title } }
    end

    assert_redirected_to shirt_url(Shirt.last)
  end

  test "should show shirt" do
    get shirt_url(@shirt)
    assert_response :success
  end

  test "should get edit" do
    get edit_shirt_url(@shirt)
    assert_response :success
  end

  test "should update shirt" do
    patch shirt_url(@shirt), params: { shirt: { birth_year: @shirt.birth_year, shirt_description: @shirt.shirt_description, shirt_title: @shirt.shirt_title } }
    assert_redirected_to shirt_url(@shirt)
  end

  test "should destroy shirt" do
    assert_difference("Shirt.count", -1) do
      delete shirt_url(@shirt)
    end

    assert_redirected_to shirts_url
  end
end
