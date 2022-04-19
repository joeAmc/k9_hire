class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :bookings
  has_many :dogs
  has_many :orders

  #  has_many :reviews, through: :booking, dependent: :destroy
  validates :first_name, :last_name, :email, :password, presence: true

  def avatar_thumbnail
    if avatar.attached?
      avatar
    else
      "ava.jpg"
    end
  end
end
