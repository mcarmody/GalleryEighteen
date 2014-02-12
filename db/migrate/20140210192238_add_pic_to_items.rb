class AddPicToItems < ActiveRecord::Migration
  def change
    add_column :items, :pic, :string
  end
end
