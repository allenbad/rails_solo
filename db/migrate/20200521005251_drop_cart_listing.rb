class DropCartListing < ActiveRecord::Migration[6.0]
  def change
    drop_table :cart_lstings
  end
end
