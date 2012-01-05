require 'test_helper'

class FunnelstagesControllerTest < ActionController::TestCase
  setup do
    @funnel_stage = funnel_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funnel_stages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funnelstage" do
    assert_difference('Funnelstage.count') do
      post :create, funnelstage: @funnel_stage.attributes
    end

    assert_redirected_to funnelstage_path(assigns(:funnelstage))
  end

  test "should show funnelstage" do
    get :show, id: @funnel_stage.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funnel_stage.to_param
    assert_response :success
  end

  test "should update funnelstage" do
    put :update, id: @funnel_stage.to_param, funnelstage: @funnel_stage.attributes
    assert_redirected_to funnelstage_path(assigns(:funnelstage))
  end

  test "should destroy funnelstage" do
    assert_difference('Funnelstage.count', -1) do
      delete :destroy, id: @funnel_stage.to_param
    end

    assert_redirected_to funnel_stages_path
  end
end
