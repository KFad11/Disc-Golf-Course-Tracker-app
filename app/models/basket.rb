# frozen_string_literal: true

class Basket < ApplicationRecord
  belongs_to :course, required: nil
  validates :basket_number, presence: true
  validates :par, presence: true
  # validates :basket_number, uniqueness: true
end
