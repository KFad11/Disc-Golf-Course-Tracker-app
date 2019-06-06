class AddCourseIdToBaskets < ActiveRecord::Migration[5.2]
  def change
    add_column :baskets, :course_id, :integer
  end
end
