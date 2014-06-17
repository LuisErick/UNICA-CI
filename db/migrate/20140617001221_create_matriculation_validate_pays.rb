class CreateMatriculationValidatePays < ActiveRecord::Migration
  def change
    create_table :matriculation_validate_pays do |t|
      t.integer :matriculation_validate_id

      t.timestamps
    end
  end
end
