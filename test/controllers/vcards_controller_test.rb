require 'test_helper'

class VcardsControllerTest < ActionController::TestCase
  setup do
    @vcard = vcards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vcards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vcard" do
    assert_difference('Vcard.count') do
      post :create, vcard: {  }
    end

    assert_redirected_to vcard_path(assigns(:vcard))
  end

  test "should show vcard" do
    get :show, id: @vcard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vcard
    assert_response :success
  end

  test "should update vcard" do
    patch :update, id: @vcard, vcard: {  }
    assert_redirected_to vcard_path(assigns(:vcard))
  end

  test "should destroy vcard" do
    assert_difference('Vcard.count', -1) do
      delete :destroy, id: @vcard
    end

    assert_redirected_to vcards_path
  end
end
