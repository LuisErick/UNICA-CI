class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.string :name
      t.float :amount
      t.text :description

      t.timestamps
    end
  end
end
