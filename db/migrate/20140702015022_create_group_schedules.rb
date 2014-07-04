class CreateGroupSchedules < ActiveRecord::Migration
  def change
    create_table :group_schedules do |t|
      t.integer :schedule_id
      t.integer :package_id

      t.timestamps
    end
  end
end
