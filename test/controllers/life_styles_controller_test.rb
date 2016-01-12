require 'test_helper'

class LifeStylesControllerTest < ActionController::TestCase
  setup do
    @life_style = life_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:life_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create life_style" do
    assert_difference('LifeStyle.count') do
      post :create, life_style: { description: @life_style.description, title: @life_style.title, user_id: @life_style.user_id }
    end

    assert_redirected_to life_style_path(assigns(:life_style))
  end

  test "should show life_style" do
    get :show, id: @life_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @life_style
    assert_response :success
  end

  test "should update life_style" do
    patch :update, id: @life_style, life_style: { description: @life_style.description, title: @life_style.title, user_id: @life_style.user_id }
    assert_redirected_to life_style_path(assigns(:life_style))
  end

  test "should destroy life_style" do
    assert_difference('LifeStyle.count', -1) do
      delete :destroy, id: @life_style
    end

    assert_redirected_to life_styles_path
  end
end
