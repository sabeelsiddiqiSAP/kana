class RestaurantController < ApplicationController
  def list_meal
  end

  def restaurant
    @create_meals = CreateMeal.all
  end

end
