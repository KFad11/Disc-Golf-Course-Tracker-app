# frozen_string_literal: true

class Basket < ApplicationRecord
  belongs_to :course, required: nil
  validates :basket_number, uniqueness: true
end
