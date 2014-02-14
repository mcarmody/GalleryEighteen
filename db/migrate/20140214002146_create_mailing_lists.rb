class CreateMailingLists < ActiveRecord::Migration
  def change
  	drop_table :mailing_lists
    create_table :mailing_lists do |t|
      t.string :email

      t.timestamps
    end
  end
end
