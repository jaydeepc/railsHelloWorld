require 'test_helper'

class SpikePagesControllerTest < ActionController::TestCase
  setup do
    @spike_page = spike_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spike_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spike_page" do
    assert_difference('SpikePage.count') do
      post :create, spike_page: {  }
    end

    assert_redirected_to spike_page_path(assigns(:spike_page))
  end

  test "should show spike_page" do
    get :show, id: @spike_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spike_page
    assert_response :success
  end

  test "should update spike_page" do
    patch :update, id: @spike_page, spike_page: {  }
    assert_redirected_to spike_page_path(assigns(:spike_page))
  end

  test "should destroy spike_page" do
    assert_difference('SpikePage.count', -1) do
      delete :destroy, id: @spike_page
    end

    assert_redirected_to spike_pages_path
  end
end
