class RemovePriceFromListing < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :price, :integer
  end
end
