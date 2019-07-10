# frozen_string_literal: true

class AddMissingTimestamps < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :baskets, null: true
    add_timestamps :courses, null: true
    add_timestamps :disc_golfers, null: true
    add_timestamps :visits, null: true
  end
end
