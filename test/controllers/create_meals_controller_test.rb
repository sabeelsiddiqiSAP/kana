require 'test_helper'

class CreateMealsControllerTest < ActionController::TestCase
  setup do
    @create_meal = create_meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_meal" do
    assert_difference('CreateMeal.count') do
      post :create, create_meal: { description: @create_meal.description, name: @create_meal.name }
    end

    assert_redirected_to create_meal_path(assigns(:create_meal))
  end

  test "should show create_meal" do
    get :show, id: @create_meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_meal
    assert_response :success
  end

  test "should update create_meal" do
    patch :update, id: @create_meal, create_meal: { description: @create_meal.description, name: @create_meal.name }
    assert_redirected_to create_meal_path(assigns(:create_meal))
  end

  test "should destroy create_meal" do
    assert_difference('CreateMeal.count', -1) do
      delete :destroy, id: @create_meal
    end

    assert_redirected_to create_meals_path
  end
end
