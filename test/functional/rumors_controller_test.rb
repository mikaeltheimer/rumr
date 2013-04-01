require 'test_helper'

class RumorsControllerTest < ActionController::TestCase
  setup do
    @rumor = rumors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rumors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rumor" do
    assert_difference('Rumor.count') do
      post :create, rumor: { content: @rumor.content, title: @rumor.title }
    end

    assert_redirected_to rumor_path(assigns(:rumor))
  end

  test "should show rumor" do
    get :show, id: @rumor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rumor
    assert_response :success
  end

  test "should update rumor" do
    put :update, id: @rumor, rumor: { content: @rumor.content, title: @rumor.title }
    assert_redirected_to rumor_path(assigns(:rumor))
  end

  test "should destroy rumor" do
    assert_difference('Rumor.count', -1) do
      delete :destroy, id: @rumor
    end

    assert_redirected_to rumors_path
  end
end
