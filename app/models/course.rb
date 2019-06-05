class Course < ApplicationRecord
  has_many :baskets
  has_many :visits
  has_many :disc_golfers, through: :visits
end
