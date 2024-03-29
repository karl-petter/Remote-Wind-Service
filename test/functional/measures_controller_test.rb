require 'test_helper'

class MeasuresControllerTest < ActionController::TestCase
  setup do
    @measure = measures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measure" do
    assert_difference('Measure.count') do
      post :create, :measure => @measure.attributes
    end

    assert_redirected_to measure_path(assigns(:measure))
  end

  test "should show measure" do
    get :show, :id => @measure.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @measure.to_param
    assert_response :success
  end

  test "should update measure" do
    put :update, :id => @measure.to_param, :measure => @measure.attributes
    assert_redirected_to measure_path(assigns(:measure))
  end

  test "should destroy measure" do
    assert_difference('Measure.count', -1) do
      delete :destroy, :id => @measure.to_param
    end

    assert_redirected_to measures_path
  end
end
