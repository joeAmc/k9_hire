class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  validates :pick_up, :drop_off, :dog, :user, presence: true
  validate :drop_off_after_pick_up

  private
  def drop_off_after_pick_up
    return if drop_off.blank? || pick_up.blank?

    if drop_off < pick_up
      errors.add(:drop_off, "must be after the start date")
    end
  end

end
