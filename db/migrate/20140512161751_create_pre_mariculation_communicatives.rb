class CreatePreMariculationCommunicatives < ActiveRecord::Migration
  def change
    create_table :pre_mariculation_communicatives do |t|
      t.integer :pre_matriculation_id
      t.integer :level_id

      t.timestamps
    end
  end
end
