class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :workouts
  has_many :set_collections,
    through: :workouts
  has_many :exercises,
    through: :set_collections
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
