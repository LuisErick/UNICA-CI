class CreatePostgradePeople < ActiveRecord::Migration
  def change
    create_table :postgrade_people do |t|
      t.integer :person_id
      t.integer :postgrade_type_id

      t.timestamps
    end
  end
end
