class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.belongs_to :disc_golfer, foriegn_key: true
      t.belongs_to :course, foriegn_key: true
    end
  end
end
