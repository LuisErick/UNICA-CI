class CreateMaritalStatuses < ActiveRecord::Migration
  def change
    create_table :marital_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
