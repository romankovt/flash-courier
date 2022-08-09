# frozen_string_literal: true

class CreateCouriers < ActiveRecord::Migration[7.0]
  def change
    create_table :couriers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :status, default: "active"

      t.timestamps

      t.index :status
      t.index :phone, unique: true
    end
  end
end
