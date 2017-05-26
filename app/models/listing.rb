class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos, :dependent => :destroy
 validates :city, :neighborhood, :price, :bedrooms, :bathrooms, :start_date, :end_date, :shared, :user_id, presence:true
end
