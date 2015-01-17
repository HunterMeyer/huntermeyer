class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.text :company
      t.text :title
      t.text :url
      t.text :start_date
      t.text :end_date
      t.text :long_description
      t.text :short_description
      t.text :highlights
      t.text :city
      t.text :state
      t.boolean :visible
      t.integer :ordinal
      t.timestamps
    end
  end
end
