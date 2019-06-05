# frozen_string_literal: true

class CreateDiscGolfers < ActiveRecord::Migration[5.2]
  def change
    create_table :disc_golfers do |t|
      t.string :name
      t.string :password
    end
  end
end
