require 'test_helper'

class SetTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @set_time = set_times(:one)
  end

  test "should get index" do
    get set_times_url
    assert_response :success
  end

  test "should get new" do
    get new_set_time_url
    assert_response :success
  end

  test "should create set_time" do
    assert_difference('SetTime.count') do
      post set_times_url, params: { set_time: { dancer_id: @set_time.dancer_id, stage_id: @set_time.stage_id, time: @set_time.time } }
    end

    assert_redirected_to set_time_url(SetTime.last)
  end

  test "should show set_time" do
    get set_time_url(@set_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_set_time_url(@set_time)
    assert_response :success
  end

  test "should update set_time" do
    patch set_time_url(@set_time), params: { set_time: { dancer_id: @set_time.dancer_id, stage_id: @set_time.stage_id, time: @set_time.time } }
    assert_redirected_to set_time_url(@set_time)
  end

  test "should destroy set_time" do
    assert_difference('SetTime.count', -1) do
      delete set_time_url(@set_time)
    end

    assert_redirected_to set_times_url
  end
end
