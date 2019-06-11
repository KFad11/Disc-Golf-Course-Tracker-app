# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :baskets
  has_many :visits
  has_many :disc_golfers, through: :visits

  validates_presence_of :name
  validates_presence_of :location

  validates_associated :baskets
  validates_associated :visits

  accepts_nested_attributes_for :visits
  accepts_nested_attributes_for :baskets
end
