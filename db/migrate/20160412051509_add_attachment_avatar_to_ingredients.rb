class AddAttachmentAvatarToIngredients < ActiveRecord::Migration
  def self.up
    change_table :ingredients do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :ingredients, :avatar
  end
end
