class CreateMatricualtionValidates < ActiveRecord::Migration
  def change
    create_table :matricualtion_validates do |t|
      t.integer :matriculation_id
      t.string :institution

      t.timestamps
    end
  end
end
