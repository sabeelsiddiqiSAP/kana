class CreateMeals < ActiveRecord::Migration
  def up
    add_attachment :meals, :avatar
  end

  def down
    remove_attachment :meals, :avatar
  end

  def change
    create_table :meals do |t|
      t.text :name
      t.text :description

      t.timestamps null: false
    end
  end
end
