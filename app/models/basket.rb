# frozen_string_literal: true

class Basket < ApplicationRecord
  belongs_to :course, required: nil
  validates :basket_number, presence: true
  validates :par, presence: true
  # validates :basket_number, uniqueness: true
  validate :non_zero_and_negative

  scope :by_number, -> { order(:basket_number) }
  # def self.by_number
  #   order(:basket_number)
  # end


private

  def non_zero_and_negative
    errors.add(:basket_number, "Field can't be zero or negative") \
    if basket_number.nil? || basket_number <= 0
  end
end
