require 'test_helper'

class FiscalProjectionsControllerTest < ActionController::TestCase
  setup do
    @financial = financials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financial" do
    assert_difference('FiscalProjection.count') do
      post :create, financial: @financial.attributes
    end

    assert_redirected_to financial_path(assigns(:financial))
  end

  test "should show financial" do
    get :show, id: @financial.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financial.to_param
    assert_response :success
  end

  test "should update financial" do
    put :update, id: @financial.to_param, financial: @financial.attributes
    assert_redirected_to financial_path(assigns(:financial))
  end

  test "should destroy financial" do
    assert_difference('FiscalProjection.count', -1) do
      delete :destroy, id: @financial.to_param
    end

    assert_redirected_to financials_path
  end
end
