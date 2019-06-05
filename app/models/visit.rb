# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :disc_golfer
  belongs_to :course
end
