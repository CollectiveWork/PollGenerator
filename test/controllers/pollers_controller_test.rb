require 'test_helper'

class PollersControllerTest < ActionController::TestCase
  setup do
    @poller = pollers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pollers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poller" do
    assert_difference('Poller.count') do
      post :create, poller: { answer_id: @poller.answer_id, ip: @poller.ip, timestamp: @poller.timestamp }
    end

    assert_redirected_to poller_path(assigns(:poller))
  end

  test "should show poller" do
    get :show, id: @poller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poller
    assert_response :success
  end

  test "should update poller" do
    patch :update, id: @poller, poller: { answer_id: @poller.answer_id, ip: @poller.ip, timestamp: @poller.timestamp }
    assert_redirected_to poller_path(assigns(:poller))
  end

  test "should destroy poller" do
    assert_difference('Poller.count', -1) do
      delete :destroy, id: @poller
    end

    assert_redirected_to pollers_path
  end
end
