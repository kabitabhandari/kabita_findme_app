class AddCategorySubcategoryToListings < ActiveRecord::Migration[5.2]
  def change #old
    add_column :listings, :category_id, :integer
    add_column :listings, :subcategory_id, :integer
  end
end
