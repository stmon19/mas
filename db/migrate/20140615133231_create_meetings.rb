class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :type
      t.datetime :start_at
      t.datetime :end_at
      t.datetime :registration_start_at
      t.datetime :registration_end_at
      t.string :place
      t.text :target
      t.text :description
      t.string :software
      t.string :location
      t.string :form
      t.text :note

      t.timestamps
    end
  end
end
