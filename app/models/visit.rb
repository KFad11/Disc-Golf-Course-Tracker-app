# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :disc_golfer, required: nil
  belongs_to :course, required: nil
  validates :day_visited, presence: true
end
