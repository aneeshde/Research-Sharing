require 'test_helper'

class UserquestionsControllerTest < ActionController::TestCase
  setup do
    @userquestion = userquestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userquestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userquestion" do
    assert_difference('Userquestion.count') do
      post :create, userquestion: { question: @userquestion.question }
    end

    assert_redirected_to userquestion_path(assigns(:userquestion))
  end

  test "should show userquestion" do
    get :show, id: @userquestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userquestion
    assert_response :success
  end

  test "should update userquestion" do
    put :update, id: @userquestion, userquestion: { question: @userquestion.question }
    assert_redirected_to userquestion_path(assigns(:userquestion))
  end

  test "should destroy userquestion" do
    assert_difference('Userquestion.count', -1) do
      delete :destroy, id: @userquestion
    end

    assert_redirected_to userquestions_path
  end
end
