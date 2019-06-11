# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :disc_golfer, required: nil
  belongs_to :course, required: nil
  validate :visit_date_cannot_be_in_the_future
end

private

def visit_date_cannot_be_in_the_future
  return if day_visited.present? && day_visited <= Date.today

  errors.add(:day_visited, "can't empty or be in the future")
end
