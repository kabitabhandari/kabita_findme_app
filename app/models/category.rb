class Category < ApplicationRecord
  has_many :subcategories
  has_many :listings             #sir added
  #def category #i added optional
		#params.require(:category).permit(:name)
	#end




end
