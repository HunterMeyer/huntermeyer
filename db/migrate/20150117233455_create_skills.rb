class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :name
      t.integer :width
      t.integer :ordinal
      t.boolean :visible
      t.timestamps
    end
  end
end
