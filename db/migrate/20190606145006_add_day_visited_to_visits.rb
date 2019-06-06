# frozen_string_literal: true

class AddDayVisitedToVisits < ActiveRecord::Migration[5.2]
  def change
    add_column :visits, :day_visited, :date
  end
end
