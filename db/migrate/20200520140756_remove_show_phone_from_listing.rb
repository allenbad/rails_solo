class RemoveShowPhoneFromListing < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :show_phone, :boolean
  end
end
