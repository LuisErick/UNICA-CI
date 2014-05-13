class CreatePreMatriculations < ActiveRecord::Migration
  def change
    create_table :pre_matriculations do |t|
      t.integer :person_id
      t.integer :curse_type_id
      t.integer :languaje_id
      t.boolean :state

      t.timestamps
    end
  end
end
