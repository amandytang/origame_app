class CreateDesignRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :design_ratings do |t|
      t.integer :design_id
      t.integer :user_id
      t.float :rating_value

      t.timestamps
    end
  end
end
