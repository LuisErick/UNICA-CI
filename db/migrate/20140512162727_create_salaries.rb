class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :teacher_attendance
      t.float :amount

      t.timestamps
    end
  end
end
