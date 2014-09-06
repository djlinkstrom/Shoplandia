require 'test_helper'

class BestUsersControllerTest < ActionController::TestCase
  setup do
    @best_user = best_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:best_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create best_user" do
    assert_difference('BestUser.count') do
      post :create, best_user: { email: @best_user.email }
    end

    assert_redirected_to best_user_path(assigns(:best_user))
  end

  test "should show best_user" do
    get :show, id: @best_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @best_user
    assert_response :success
  end

  test "should update best_user" do
    patch :update, id: @best_user, best_user: { email: @best_user.email }
    assert_redirected_to best_user_path(assigns(:best_user))
  end

  test "should destroy best_user" do
    assert_difference('BestUser.count', -1) do
      delete :destroy, id: @best_user
    end

    assert_redirected_to best_users_path
  end
end
