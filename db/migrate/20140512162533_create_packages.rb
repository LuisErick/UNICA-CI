class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :teacher_id
      t.integer :schedule_id
      t.integer :room_id

      t.timestamps
    end
  end
end
