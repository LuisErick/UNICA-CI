class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :matriculation_course_id
      t.float :value
      t.integer :grade_type_id

      t.timestamps
    end
  end
end
