class CreatePermisssions < ActiveRecord::Migration
  def change
    create_table :permisssions do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
