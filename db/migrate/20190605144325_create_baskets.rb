# frozen_string_literal: true

class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.integer :basket_number
      t.integer :par
    end
  end
end
