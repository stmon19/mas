class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :meeting_id
      t.string :name
      t.string :code
      t.integer :category
      t.datetime :start_at
      t.datetime :end_at
      t.string :floor_name
      t.integer :capacity
      t.integer :amount
      t.integer :counter

      t.timestamps
    end
  end
end
