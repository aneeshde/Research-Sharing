require 'test_helper'

class SearchPagesControllerTest < ActionController::TestCase
  setup do
    @search_page = search_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:search_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search_page" do
    assert_difference('SearchPage.count') do
      post :create, search_page: { SPARK_publication_date: @search_page.SPARK_publication_date, author: @search_page.author, publication_date: @search_page.publication_date, title: @search_page.title }
    end

    assert_redirected_to search_page_path(assigns(:search_page))
  end

  test "should show search_page" do
    get :show, id: @search_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search_page
    assert_response :success
  end

  test "should update search_page" do
    put :update, id: @search_page, search_page: { SPARK_publication_date: @search_page.SPARK_publication_date, author: @search_page.author, publication_date: @search_page.publication_date, title: @search_page.title }
    assert_redirected_to search_page_path(assigns(:search_page))
  end

  test "should destroy search_page" do
    assert_difference('SearchPage.count', -1) do
      delete :destroy, id: @search_page
    end

    assert_redirected_to search_pages_path
  end
end
