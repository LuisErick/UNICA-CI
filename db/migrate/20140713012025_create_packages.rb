class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :teacher_id
      t.integer :room_id
      t.integer :number_of_sessions
      t.date :start_date
      t.boolean :state

      t.timestamps
    end
  end
end
