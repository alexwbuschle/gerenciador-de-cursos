require 'test_helper'

class GraduationsControllerTest < ActionController::TestCase
  setup do
    @graduation = graduations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graduations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graduation" do
    assert_difference('Graduation.count') do
      post :create, :graduation => @graduation.attributes
    end

    assert_redirected_to graduation_path(assigns(:graduation))
  end

  test "should show graduation" do
    get :show, :id => @graduation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @graduation.to_param
    assert_response :success
  end

  test "should update graduation" do
    put :update, :id => @graduation.to_param, :graduation => @graduation.attributes
    assert_redirected_to graduation_path(assigns(:graduation))
  end

  test "should destroy graduation" do
    assert_difference('Graduation.count', -1) do
      delete :destroy, :id => @graduation.to_param
    end

    assert_redirected_to graduations_path
  end
end
