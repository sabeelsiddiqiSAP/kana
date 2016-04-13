class OrganizationController < ApplicationController

  def organization
    @Ingredients = Ingredient.all
  end

  
  def thankyou
  end
end
