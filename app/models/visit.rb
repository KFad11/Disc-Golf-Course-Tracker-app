class Visit < ApplicationRecord
  belongs_to :disc_golfer
  belongs_to :course

  #has a date visited method
end