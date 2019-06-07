# frozen_string_literal: true

class Basket < ApplicationRecord
  belongs_to :course, required: nil
  validates :basket_number, presence: true
  validates :par, presence: true
  # validates :basket_number, uniqueness: true
  validate :non_zero

  def non_zero
    if basket_number.zero?
      errors.add(:basket_number, "Field can't be zero")
    end
  end
end
