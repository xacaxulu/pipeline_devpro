require 'test_helper'

class PracticeGroupsControllerTest < ActionController::TestCase
  setup do
    @pgroup = pgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pgroup" do
    assert_difference('PracticeGroup.count') do
      post :create, pgroup: @pgroup.attributes
    end

    assert_redirected_to pgroup_path(assigns(:pgroup))
  end

  test "should show pgroup" do
    get :show, id: @pgroup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pgroup.to_param
    assert_response :success
  end

  test "should update pgroup" do
    put :update, id: @pgroup.to_param, pgroup: @pgroup.attributes
    assert_redirected_to pgroup_path(assigns(:pgroup))
  end

  test "should destroy pgroup" do
    assert_difference('PracticeGroup.count', -1) do
      delete :destroy, id: @pgroup.to_param
    end

    assert_redirected_to pgroups_path
  end
end
