class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.text :genre
      t.text :summary
      t.text :reference
      t.text :status, default: 'Active'
      t.text :url
      t.integer :clicks, default: 0
      t.datetime :published_at
      t.timestamps
    end

    add_index :books, :status
  end
end
