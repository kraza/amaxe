require 'test_helper'

class HeaderFootersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:header_footers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create header_footer" do
    assert_difference('HeaderFooter.count') do
      post :create, :header_footer => { }
    end

    assert_redirected_to header_footer_path(assigns(:header_footer))
  end

  test "should show header_footer" do
    get :show, :id => header_footers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => header_footers(:one).to_param
    assert_response :success
  end

  test "should update header_footer" do
    put :update, :id => header_footers(:one).to_param, :header_footer => { }
    assert_redirected_to header_footer_path(assigns(:header_footer))
  end

  test "should destroy header_footer" do
    assert_difference('HeaderFooter.count', -1) do
      delete :destroy, :id => header_footers(:one).to_param
    end

    assert_redirected_to header_footers_path
  end
end
