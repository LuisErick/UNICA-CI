class CreateTeacherAttendances < ActiveRecord::Migration
  def change
    create_table :teacher_attendances do |t|
      t.integer :package_id
      t.boolean :state
      t.time :arrival_time
      t.time :dismissal_time
      t.integer :session_number
      t.date :day

      t.timestamps
    end
  end
end
