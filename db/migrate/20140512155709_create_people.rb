class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :user_id
      t.string :paternal_lastname
      t.string :maternal_lastname
      t.string :name
      t.string :dni
      t.string :address
      t.string :district
      t.string :province
      t.string :department
      t.string :home_phone
      t.string :mobile_phone
      t.boolean :sex
      t.date :birthday
      t.string :birthplace
      t.integer :marital_status_id

      t.timestamps
    end
  end
end
