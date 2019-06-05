class DiscGolfer < ApplicationRecord
  has_many :visits
  has_many :courses, through: :visits
end

class Visit < ApplicationRecord - Date visited
  belongs_to :disc_golfer
  belongs_to :course
end

class Course < ApplicationRecord
  has_many :baskets
  has_many :visits
  has_many :disc_golfers, through: :visits
end

Class Basket < Application - has par
  belongs_to :course
End
