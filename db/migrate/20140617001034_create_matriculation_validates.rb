class CreateMatriculationValidates < ActiveRecord::Migration
  def change
    create_table :matriculation_validates do |t|
      t.integer :matriculation_id
      t.string :institution
      t.boolean :validation_type

      t.timestamps
    end
  end
end
