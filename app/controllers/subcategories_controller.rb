class SubcategoriesController < ApplicationController
  def show
      @listings =  Listing.where(:subcategory_id=> params[:id])
      #@category = Category.find(params[:id]) # yo garda category id ma 1 to 20 ko range bascha coz id will read subcategory params
      @category = Category.find(params[:category_id]) # output findme>societal
      @subcategory = Subcategory.find(params[:id])  #output findme>societal>games
  end
end
