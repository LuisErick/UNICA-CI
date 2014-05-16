class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :teacher_attendance_id
      t.float :amount

      t.timestamps
    end
  end
end
