class CreateCreateMeals < ActiveRecord::Migration
  def change
    create_table :create_meals do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
