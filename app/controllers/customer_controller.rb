class CustomerController < ApplicationController
  def meals
        @create_meals = CreateMeal.all
  end

  def ingredients
  end

end
