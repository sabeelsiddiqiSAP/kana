class CustomerController < ApplicationController
  def meals
        @create_meals = CreateMeal.all
  end

  def ingredients
    @ingredients = Ingredient.all
  end

end
