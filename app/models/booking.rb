class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  validates :pick_up, :drop_off, :dog, :user, presence: true
  validate :drop_off_after_pick_up
  validate :overlaps
  has_many :orders, :dependent => :destroy
  # monetize :price_cents

  private

  def drop_off_after_pick_up
    return if drop_off.blank? || pick_up.blank?

    if drop_off < pick_up
      errors.add(:drop_off, "must be after the start date")
    end
  end

  def overlaps
    bookings = Booking.where(dog_id: id)
    bookings.each do |booking|
      if pick_up < booking.drop_off && booking.pick_up < drop_off
        errors.add(:overlaps, 'Sorry already booked')
      end
    end
  end
end
