class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.text :genre
      t.text :subject
      t.text :summary
      t.text :isbn
      t.text :status, default: 'Active'
      t.text :url
      t.text :image_url
      t.integer :ordinal
      t.integer :clicks, default: 0
      t.datetime :published_at
      t.timestamps
    end

    add_index :books, :status
  end
end
