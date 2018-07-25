class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :category_id_id
    remove_column :listings, :subcategory_id_id
  end
end
