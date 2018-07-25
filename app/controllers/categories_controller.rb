class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @societal = @categories[0] #id 1 bhayekoharu
    @onsale = @categories[1]
    @housing = @categories[2]
    @works = @categories[3]
    @services = @categories[4]
    @personal = @categories[5]
  end

  def show
    @listings =  Listing.where(category_id: params[:id])
    @category = Category.find(params[:id])  # FindMe > societal> clubs => helps to print societal

  end

end
