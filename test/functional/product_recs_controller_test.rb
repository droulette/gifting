require 'test_helper'

class ProductRecsControllerTest < ActionController::TestCase
  setup do
    @product_rec = product_recs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_recs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_rec" do
    assert_difference('ProductRec.count') do
      post :create, product_rec: {  }
    end

    assert_redirected_to product_rec_path(assigns(:product_rec))
  end

  test "should show product_rec" do
    get :show, id: @product_rec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_rec
    assert_response :success
  end

  test "should update product_rec" do
    put :update, id: @product_rec, product_rec: {  }
    assert_redirected_to product_rec_path(assigns(:product_rec))
  end

  test "should destroy product_rec" do
    assert_difference('ProductRec.count', -1) do
      delete :destroy, id: @product_rec
    end

    assert_redirected_to product_recs_path
  end
end
