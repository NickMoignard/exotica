require 'test_helper'

class DancersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dancer = dancers(:one)
  end

  test "should get index" do
    get dancers_url
    assert_response :success
  end

  test "should get new" do
    get new_dancer_url
    assert_response :success
  end

  test "should create dancer" do
    assert_difference('Dancer.count') do
<<<<<<< HEAD
      post dancers_url, params: { dancer: { account: @dancer.account, full_name: @dancer.full_name, stage_name: @dancer.stage_name } }
=======
      post dancers_url, params: { dancer: { account: @dancer.account, fake_name: @dancer.fake_name, full_name: @dancer.full_name } }
>>>>>>> 6ccd12dee487bbd0f1a6d5ac2171c66784ff9c66
    end

    assert_redirected_to dancer_url(Dancer.last)
  end

  test "should show dancer" do
    get dancer_url(@dancer)
    assert_response :success
  end

  test "should get edit" do
    get edit_dancer_url(@dancer)
    assert_response :success
  end

  test "should update dancer" do
<<<<<<< HEAD
    patch dancer_url(@dancer), params: { dancer: { account: @dancer.account, full_name: @dancer.full_name, stage_name: @dancer.stage_name } }
=======
    patch dancer_url(@dancer), params: { dancer: { account: @dancer.account, fake_name: @dancer.fake_name, full_name: @dancer.full_name } }
>>>>>>> 6ccd12dee487bbd0f1a6d5ac2171c66784ff9c66
    assert_redirected_to dancer_url(@dancer)
  end

  test "should destroy dancer" do
    assert_difference('Dancer.count', -1) do
      delete dancer_url(@dancer)
    end

    assert_redirected_to dancers_url
  end
end
