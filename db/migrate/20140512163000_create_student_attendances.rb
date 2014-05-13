class CreateStudentAttendances < ActiveRecord::Migration
  def change
    create_table :student_attendances do |t|
      t.integer :matriculation_course_id
      t.date :attendance_date
      t.boolean :state

      t.timestamps
    end
  end
end
