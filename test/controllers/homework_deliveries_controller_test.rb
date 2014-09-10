require 'test_helper'

class HomeworkDeliveriesControllerTest < ActionController::TestCase
  setup do
    @homework_delivery = homework_deliveries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homework_deliveries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homework_delivery" do
    assert_difference('HomeworkDelivery.count') do
      post :create, homework_delivery: { file_path: @homework_delivery.file_path }
    end

    assert_redirected_to homework_delivery_path(assigns(:homework_delivery))
  end

  test "should show homework_delivery" do
    get :show, id: @homework_delivery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homework_delivery
    assert_response :success
  end

  test "should update homework_delivery" do
    patch :update, id: @homework_delivery, homework_delivery: { file_path: @homework_delivery.file_path }
    assert_redirected_to homework_delivery_path(assigns(:homework_delivery))
  end

  test "should destroy homework_delivery" do
    assert_difference('HomeworkDelivery.count', -1) do
      delete :destroy, id: @homework_delivery
    end

    assert_redirected_to homework_deliveries_path
  end
end
