class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.text :company
      t.text :title
      t.text :url
      t.text :start_date
      t.text :end_date, default: 'Present'
      t.text :description
      t.text :highlights
      t.integer :ordinal
      t.timestamps
    end
  end
end
