class Dog < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :user
  has_many :bookings
end
