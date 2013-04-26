require 'test_helper'

class TCalDaysControllerTest < ActionController::TestCase
  setup do
    @t_cal_day = t_cal_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_cal_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_cal_day" do
    assert_difference('TCalDay.count') do
      post :create, t_cal_day: { date: @t_cal_day.date, details: @t_cal_day.details }
    end

    assert_redirected_to t_cal_day_path(assigns(:t_cal_day))
  end

  test "should show t_cal_day" do
    get :show, id: @t_cal_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_cal_day
    assert_response :success
  end

  test "should update t_cal_day" do
    put :update, id: @t_cal_day, t_cal_day: { date: @t_cal_day.date, details: @t_cal_day.details }
    assert_redirected_to t_cal_day_path(assigns(:t_cal_day))
  end

  test "should destroy t_cal_day" do
    assert_difference('TCalDay.count', -1) do
      delete :destroy, id: @t_cal_day
    end

    assert_redirected_to t_cal_days_path
  end
end
