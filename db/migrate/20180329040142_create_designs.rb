class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.text :name
      t.text :image
      t.text :instructions
      t.text :difficulty
      t.float :rating
      t.integer :creator_id

      t.timestamps
    end
  end
end
