class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :status, default: 0
      t.string :phone_number
      t.timestamps null: false
    end
  end
end
