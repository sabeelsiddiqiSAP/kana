class RestaurantController < ApplicationController
  def list_meal
  end

  def restaurant
    @create_meals = CreateMeal.all
    @ingredients = Ingredient.all
  end

  def dashboard
  end

  def current_meals
    @create_meals = CreateMeal.all
  end

  def current_ingredients
    @ingredients = Ingredient.all
  end


end
