# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :baskets
  has_many :visits
  has_many :disc_golfers, through: :visits

  validates :name, :location, presence: true

  validates_associated :baskets, :visits

  accepts_nested_attributes_for :visits, :baskets
end
