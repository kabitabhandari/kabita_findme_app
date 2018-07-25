class Comment < ApplicationRecord
  belongs_to :listing
  belongs_to :user
   validates :message, :title, presence: true, length: { minimum: 5, maximimum: 1000 }
   
end
