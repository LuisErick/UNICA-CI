class CreateMatriculations < ActiveRecord::Migration
  def change
    create_table :matriculations do |t|
      t.integer :pre_matriculation_id
      t.date :acceptance_day

      t.timestamps
    end
  end
end
