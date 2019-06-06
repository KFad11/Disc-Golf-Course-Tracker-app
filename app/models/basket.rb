# frozen_string_literal: true

class Basket < ApplicationRecord
  belongs_to :course, required: nil
end
