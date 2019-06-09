# frozen_string_literal: true

class AddVisitIdToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :visit_id, :integer
  end
end
