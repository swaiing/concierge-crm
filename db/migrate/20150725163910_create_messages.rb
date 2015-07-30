class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :body

      t.timestamps null: false
    end
  end
end
