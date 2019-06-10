# frozen_string_literal: true

class Basket < ApplicationRecord
  belongs_to :course, required: nil
  validate :non_zero_and_negative
  validate :par_check
  validates :basket_number,
            uniqueness: { scope: :course_id,
                          message: "A basket number must be unique." }
  scope :by_number, -> { order(:basket_number) }
# def self.by_number
#  order(:basket_number)
# end

private

  def non_zero_and_negative
    errors.add(:basket_number, "field can't be zero or negative") \
    if basket_number.nil? || basket_number <= 0
  end

  def par_check
    errors.add(:par, "field can't be zero or negative") \
    if par.nil? || par <= 0
  end
end
