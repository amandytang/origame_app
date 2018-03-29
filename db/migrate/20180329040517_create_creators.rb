class CreateCreators < ActiveRecord::Migration[5.1]
  def change
    create_table :creators do |t|
      t.text :name
      t.text :image
      t.text :nationality
      t.text :website

      t.timestamps
    end
  end
end
