class CreatePostgradeTypes < ActiveRecord::Migration
  def change
    create_table :postgrade_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
