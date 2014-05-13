class CreateUnicaPeople < ActiveRecord::Migration
  def change
    create_table :unica_people do |t|
      t.integer :person_id
      t.integer :college_id
      t.integer :semester

      t.timestamps
    end
  end
end
