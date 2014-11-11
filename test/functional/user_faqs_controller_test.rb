require 'test_helper'

class UserFaqsControllerTest < ActionController::TestCase
  setup do
    @user_faq = user_faqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_faqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_faq" do
    assert_difference('UserFaq.count') do
      post :create, user_faq: { Question: @user_faq.Question }
    end

    assert_redirected_to user_faq_path(assigns(:user_faq))
  end

  test "should show user_faq" do
    get :show, id: @user_faq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_faq
    assert_response :success
  end

  test "should update user_faq" do
    put :update, id: @user_faq, user_faq: { Question: @user_faq.Question }
    assert_redirected_to user_faq_path(assigns(:user_faq))
  end

  test "should destroy user_faq" do
    assert_difference('UserFaq.count', -1) do
      delete :destroy, id: @user_faq
    end

    assert_redirected_to user_faqs_path
  end
end
