class Listing < ApplicationRecord
  belongs_to :category, required: false#, foreign_key: 'category_id' #sir added but false i add
  belongs_to :subcategory, required: false#, foreign_key: 'subcategory_id'
  belongs_to :user, required: false
  #validates :user_id, presence: true # just in case for more user security for each post it has userid
  validates_presence_of :title # we dont want empty title
  validates_presence_of :description # we dont want empty title
  validates_presence_of :city #we dont want empty city
  validates_presence_of :state #we dont want empty state

  has_many :comments, dependent: :destroy




  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [city, state, zipcode].join(', ')
  end
  def self.search(params)
listings = Listing.where(category_id: params[:category].to_i) #.to_i nagareni chaldorecha
listings = listings.where("title LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")if params[:search].present?
#listings =listings.where("title LIKE? or description LIKE?", params[:search], params[:search]) if params[:search].present?
listings = listings.near(params[:location], 20) if params[:location].present?
listings
end
end
  #def self.search(params) # making own search function
    #listings= Listing.where(category_id: params[:category].to_i) #defining a variable "listings"to grab whatever is in rhs
#works for postgresql
  #  listings =listings.where("title LIKE? or description LIKE?", params[:search], params[:search]) if params[:search].present?
#for sqlite you have to pass param as string

    #listings =listings.where("title LIKE? OR description LIKE?", "%#{params[:search]}%", "%#{params[:search]}%")if params[:search].present?
  #  listings = listings.near(params[:location], 20) if params[:location].present?
    #listings #finally returning the jumbo listings value
 #end
