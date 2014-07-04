class CreatePreMatriculations < ActiveRecord::Migration
  def change
    create_table :pre_matriculations do |t|
      t.integer :person_id
      t.integer :course_type_id
      t.integer :language_id
      t.boolean :state
      t.string :code

      t.timestamps
    end
  end
end
