# frozen_string_literal: true

class RemoveVisitIdToCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :visit_id, :integer
  end
end
