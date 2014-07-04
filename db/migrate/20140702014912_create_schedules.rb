class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
