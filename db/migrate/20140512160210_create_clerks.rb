class CreateClerks < ActiveRecord::Migration
  def change
    create_table :clerks do |t|
      t.integer :person_id
      t.date :start_date

      t.timestamps
    end
  end
end
