require 'test_helper'

class MicrosoftsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microsofts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microsoft" do
    assert_difference('Microsoft.count') do
      post :create, :microsoft => { }
    end

    assert_redirected_to microsoft_path(assigns(:microsoft))
  end

  test "should show microsoft" do
    get :show, :id => microsofts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => microsofts(:one).to_param
    assert_response :success
  end

  test "should update microsoft" do
    put :update, :id => microsofts(:one).to_param, :microsoft => { }
    assert_redirected_to microsoft_path(assigns(:microsoft))
  end

  test "should destroy microsoft" do
    assert_difference('Microsoft.count', -1) do
      delete :destroy, :id => microsofts(:one).to_param
    end

    assert_redirected_to microsofts_path
  end
end
