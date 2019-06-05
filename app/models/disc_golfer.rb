class DiscGolfer < ApplicationRecord
  has_many :visits
  has_many :courses, through: :visits
end
