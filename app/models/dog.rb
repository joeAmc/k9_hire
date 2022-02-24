class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :breed, :age, :description, :price, :location, :user, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
