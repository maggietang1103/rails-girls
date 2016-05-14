require 'test_helper'

class MaggiesControllerTest < ActionController::TestCase
  setup do
    @maggy = maggies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maggies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maggy" do
    assert_difference('Maggie.count') do
      post :create, maggy: { description: @maggy.description, name: @maggy.name, picture: @maggy.picture, remark: @maggy.remark }
    end

    assert_redirected_to maggy_path(assigns(:maggy))
  end

  test "should show maggy" do
    get :show, id: @maggy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maggy
    assert_response :success
  end

  test "should update maggy" do
    patch :update, id: @maggy, maggy: { description: @maggy.description, name: @maggy.name, picture: @maggy.picture, remark: @maggy.remark }
    assert_redirected_to maggy_path(assigns(:maggy))
  end

  test "should destroy maggy" do
    assert_difference('Maggie.count', -1) do
      delete :destroy, id: @maggy
    end

    assert_redirected_to maggies_path
  end
end
