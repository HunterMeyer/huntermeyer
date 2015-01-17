class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.text :school
      t.text :concentration
      t.text :url
      t.text :start_date
      t.text :end_date
      t.text :city
      t.text :state
      t.text :description
      t.integer :ordinal
      t.boolean :visible
      t.text :highlights
      t.timestamps
    end
  end
end
