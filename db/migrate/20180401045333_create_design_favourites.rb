class CreateDesignFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :design_favourites do |t|
      t.integer :design_id
      t.integer :user_id

      t.timestamps
    end
  end
end
