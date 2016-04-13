Rails.application.routes.draw do
  resources :ingredients
  resources :create_meals


  root 'home#index'
  get  'customer_case' => 'home#customer_case', as: :customer_case
  get  'retailer_case' => 'home#retailer_case', as: :retailer_case

  get 'customer' => 'customer#customer', as: :customer
  get 'meals' => 'customer#meals', as: :meals

  get 'restaurant' => 'restaurant#restaurant', as: :restaurant
  get 'dashboard' => 'restaurant#dashboard', as: :dashboard
  get 'list_meal' => 'restaurant#list_meal', as: :list_meal
  get 'current_meals' => 'restaurant#current_meals', as: :current_meals
  get 'current_ingredients' => 'restaurant#current_ingredients', as: :current_ingredients

  get 'organization' => 'organization#organization', as: :organization
  get 'thankyou' => 'organization#thankyou', as: :thankyou

  get 'sign_up' => 'sign_up#sign_up', as: :sign_up

end
