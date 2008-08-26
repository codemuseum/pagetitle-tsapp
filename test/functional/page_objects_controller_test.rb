require 'test_helper'

class PageObjectsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:page_objects)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_page_object
    assert_difference('PageObject.count') do
      post :create, :page_object => { }
    end

    assert_redirected_to page_object_path(assigns(:page_object))
  end

  def test_should_show_page_object
    get :show, :id => page_objects(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => page_objects(:one).id
    assert_response :success
  end

  def test_should_update_page_object
    put :update, :id => page_objects(:one).id, :page_object => { }
    assert_redirected_to page_object_path(assigns(:page_object))
  end

  def test_should_destroy_page_object
    assert_difference('PageObject.count', -1) do
      delete :destroy, :id => page_objects(:one).id
    end

    assert_redirected_to page_objects_path
  end
end
