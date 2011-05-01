require 'test_helper'

class Book2sControllerTest < ActionController::TestCase
  setup do
    @book2 = book2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book2" do
    assert_difference('Book2.count') do
      post :create, :book2 => @book2.attributes
    end

    assert_redirected_to book2_path(assigns(:book2))
  end

  test "should show book2" do
    get :show, :id => @book2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @book2.to_param
    assert_response :success
  end

  test "should update book2" do
    put :update, :id => @book2.to_param, :book2 => @book2.attributes
    assert_redirected_to book2_path(assigns(:book2))
  end

  test "should destroy book2" do
    assert_difference('Book2.count', -1) do
      delete :destroy, :id => @book2.to_param
    end

    assert_redirected_to book2s_path
  end
end
