class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :person_id
      t.date :acceptance_date

      t.timestamps
    end
  end
end
