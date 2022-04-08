class Review < ApplicationRecord
  belongs_to :bookmark
  validates :content, :rating, presence: true
end
