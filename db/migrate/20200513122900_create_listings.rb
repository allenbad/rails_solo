class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.text :title
      t.integer :price
      t.text :description
      t.boolean :show_phone

      t.timestamps
    end
  end
end
