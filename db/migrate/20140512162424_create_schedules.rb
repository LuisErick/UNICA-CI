class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :days
      t.time :start_time
      t.time :end_time
      t.integer :week_days
      t.integer :number_of_sessions

      t.timestamps
    end
  end
end
