class CreateMatriculationValidateExams < ActiveRecord::Migration
  def change
    create_table :matriculation_validate_exams do |t|
      t.integer :matriculation_validate
      t.float :grade

      t.timestamps
    end
  end
end
