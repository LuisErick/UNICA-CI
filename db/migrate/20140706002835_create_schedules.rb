class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :day
      t.time :start_time
      t.time :end_time
      t.boolean :state
      t.integer :language_id

      t.timestamps
    end
  end
end
