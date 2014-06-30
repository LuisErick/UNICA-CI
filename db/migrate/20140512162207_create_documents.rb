class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :matriculation_validate_id
      t.integer :document_type_id
      t.string :document_code

      t.timestamps
    end
  end
end
