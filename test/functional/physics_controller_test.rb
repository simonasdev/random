require 'test_helper'

class PhysicsControllerTest < ActionController::TestCase
  setup do
    @physic = physics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physic" do
    assert_difference('Physic.count') do
      post :create, physic: { astrauskiene: @physic.astrauskiene, condition: @physic.condition, insanity: @physic.insanity }
    end

    assert_redirected_to physic_path(assigns(:physic))
  end

  test "should show physic" do
    get :show, id: @physic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physic
    assert_response :success
  end

  test "should update physic" do
    put :update, id: @physic, physic: { astrauskiene: @physic.astrauskiene, condition: @physic.condition, insanity: @physic.insanity }
    assert_redirected_to physic_path(assigns(:physic))
  end

  test "should destroy physic" do
    assert_difference('Physic.count', -1) do
      delete :destroy, id: @physic
    end

    assert_redirected_to physics_path
  end
end
