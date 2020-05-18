class AddDepositToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :deposit, :integer
  end
end
