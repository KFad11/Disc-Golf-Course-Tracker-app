# frozen_string_literal: true

class Basket < ApplicationRecord
  belongs_to :course, required: nil
  validates :basket_number, presence: true
  validates :par, presence: true
  validates_numericality_of :par, greater_than_or_equal_to: 3
  validates_numericality_of :par, less_than_or_equal_to: 5
  # validates :basket_number, uniqueness: true
end
