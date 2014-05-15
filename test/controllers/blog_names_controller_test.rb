require 'test_helper'

class BlogNamesControllerTest < ActionController::TestCase
  setup do
    @blog_name = blog_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_name" do
    assert_difference('BlogName.count') do
      post :create, blog_name: { author: @blog_name.author }
    end

    assert_redirected_to blog_name_path(assigns(:blog_name))
  end

  test "should show blog_name" do
    get :show, id: @blog_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_name
    assert_response :success
  end

  test "should update blog_name" do
    patch :update, id: @blog_name, blog_name: { author: @blog_name.author }
    assert_redirected_to blog_name_path(assigns(:blog_name))
  end

  test "should destroy blog_name" do
    assert_difference('BlogName.count', -1) do
      delete :destroy, id: @blog_name
    end

    assert_redirected_to blog_names_path
  end
end
