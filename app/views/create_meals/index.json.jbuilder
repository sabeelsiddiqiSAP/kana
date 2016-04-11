json.array!(@create_meals) do |create_meal|
  json.extract! create_meal, :id, :name, :description
  json.url create_meal_url(create_meal, format: :json)
end
