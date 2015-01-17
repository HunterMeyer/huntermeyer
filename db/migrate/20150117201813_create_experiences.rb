class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.text :company
      t.text :title
      t.text :url
      t.text :start
      t.text :end, default: 'Present'
      t.text :description
      t.integer :ordinal
      t.timestamps
    end
  end
end
