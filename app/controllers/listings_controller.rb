class ListingsController < ApplicationController
before_action :authenticate_user!,only: [:new, :create] # we dont want user to create listing when they are not logged in.we want users to create new account in order for them to create listing
#authenticate_user! is devise method
before_action :is_user?, only:[:edit, :update, :destroy] #edit and delete tags are not shown but if we click listings/8/edit , it will be redirected so we need to stop this

  def new
    @listing = Listing.new
  end


  def create # we have to hold paramaters.
    @listing = Listing.new(listing_params)
    @listing.user = current_user #current user is devise gem, just finding our current user id and putting into a listing user
    #if i not do above @listing.user = current_user then my user_id always nil in DB.
    if @listing.save
      redirect_to @listing
    else
  # redisplay the form if validation failed
    flash[:notice] = @listing.errors.full_messages.to_sentence
    render action: 'new'
    end
  end


  def show
    @listing = Listing.find(params[:id])
  end


  def search
  @listings = Listing.search(params)
  end

  def mylistings
    @listings = Listing.where(user: current_user)
  end

  def edit
    @listing = Listing.where(user: current_user)
    @listing = Listing.find(params[:id])
  end
  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to @listing
  end

  def destroy
    @listing = Listing.where(user: current_user)
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to root_path
  end


  def is_user?
    @listing = Listing.find(params[:id])
    unless current_user = @listing.user
      redirect_to root_path, alert: "Sorry, you are not the user of this listing."
    end
  end


  private
  def listing_params
    params.require(:listing).permit(:title, :description, :city, :state, :zipcode,:category_id, :subcategory_id,) #table name and strong parameters. those parameters that are only used not all
  end


end
