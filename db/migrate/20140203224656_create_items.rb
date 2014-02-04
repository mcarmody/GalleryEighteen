class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :details
      t.integer :price
      t.timestamps
    end
  end
end
