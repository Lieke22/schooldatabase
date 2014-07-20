require 'test_helper'

class ActionpointsControllerTest < ActionController::TestCase
  setup do
    @actionpoint = actionpoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actionpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actionpoint" do
    assert_difference('Actionpoint.count') do
      post :create, actionpoint: { action: @actionpoint.action, datum: @actionpoint.datum, status: @actionpoint.status }
    end

    assert_redirected_to actionpoint_path(assigns(:actionpoint))
  end

  test "should show actionpoint" do
    get :show, id: @actionpoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actionpoint
    assert_response :success
  end

  test "should update actionpoint" do
    patch :update, id: @actionpoint, actionpoint: { action: @actionpoint.action, datum: @actionpoint.datum, status: @actionpoint.status }
    assert_redirected_to actionpoint_path(assigns(:actionpoint))
  end

  test "should destroy actionpoint" do
    assert_difference('Actionpoint.count', -1) do
      delete :destroy, id: @actionpoint
    end

    assert_redirected_to actionpoints_path
  end
end
