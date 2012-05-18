require 'test_helper'

class TraineesControllerTest < ActionController::TestCase
  setup do
    @trainee = trainees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trainee" do
    assert_difference('Trainee.count') do
      post :create, :trainee => @trainee.attributes
    end

    assert_redirected_to trainee_path(assigns(:trainee))
  end

  test "should show trainee" do
    get :show, :id => @trainee.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trainee.to_param
    assert_response :success
  end

  test "should update trainee" do
    put :update, :id => @trainee.to_param, :trainee => @trainee.attributes
    assert_redirected_to trainee_path(assigns(:trainee))
  end

  test "should destroy trainee" do
    assert_difference('Trainee.count', -1) do
      delete :destroy, :id => @trainee.to_param
    end

    assert_redirected_to trainees_path
  end
end
