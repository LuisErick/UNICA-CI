class CreateMatriculationCourses < ActiveRecord::Migration
  def change
    create_table :matriculation_courses do |t|
      t.integer :matriculation_id
      t.integer :package_id
      t.date :start_date
      t.date :end_date
      t.float :final_grade

      t.timestamps
    end
  end
end
