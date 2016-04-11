class AddAttachmentAvatarToCreateMeals < ActiveRecord::Migration
  def self.up
    change_table :create_meals do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :create_meals, :avatar
  end
end
