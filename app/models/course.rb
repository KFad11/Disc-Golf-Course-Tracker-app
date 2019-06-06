# frozen_string_literal: true

class Course < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  has_many :baskets
  has_many :visits
  has_many :disc_golfers, through: :visits
end
