class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.integer :matriculation_id
      t.boolean :state
      t.date :delivery_date

      t.timestamps
    end
  end
end
