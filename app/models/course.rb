# frozen_string_literal: true

class Course < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :location
  has_many :baskets
  has_many :visits
  has_many :disc_golfers, through: :visits
  accepts_nested_attributes_for :baskets
  validates_associated :baskets
  accepts_nested_attributes_for :visits
  validates_associated :visits
end
