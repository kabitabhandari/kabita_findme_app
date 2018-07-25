class Subcategory < ApplicationRecord
  belongs_to :category, required: false
  #has_many :listings #added by me not sir

  #def subcategory # i added optional
		#params.require(:subcategory).permit(:name, :category_id)
	#end
end
