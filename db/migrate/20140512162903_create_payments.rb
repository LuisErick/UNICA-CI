class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :matricualtion_id
      t.integer :payment_type_id
      t.date :payment_day
      t.string :receipt_number

      t.timestamps
    end
  end
end
