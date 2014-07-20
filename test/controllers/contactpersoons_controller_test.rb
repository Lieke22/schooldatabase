require 'test_helper'

class ContactpersoonsControllerTest < ActionController::TestCase
  setup do
    @contactpersoon = contactpersoons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactpersoons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contactpersoon" do
    assert_difference('Contactpersoon.count') do
      post :create, contactpersoon: { function: @contactpersoon.function, mail: @contactpersoon.mail, name: @contactpersoon.name, note: @contactpersoon.note, telephone: @contactpersoon.telephone }
    end

    assert_redirected_to contactpersoon_path(assigns(:contactpersoon))
  end

  test "should show contactpersoon" do
    get :show, id: @contactpersoon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contactpersoon
    assert_response :success
  end

  test "should update contactpersoon" do
    patch :update, id: @contactpersoon, contactpersoon: { function: @contactpersoon.function, mail: @contactpersoon.mail, name: @contactpersoon.name, note: @contactpersoon.note, telephone: @contactpersoon.telephone }
    assert_redirected_to contactpersoon_path(assigns(:contactpersoon))
  end

  test "should destroy contactpersoon" do
    assert_difference('Contactpersoon.count', -1) do
      delete :destroy, id: @contactpersoon
    end

    assert_redirected_to contactpersoons_path
  end
end
