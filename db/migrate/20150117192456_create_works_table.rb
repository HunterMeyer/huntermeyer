class CreateWorksTable < ActiveRecord::Migration
  def change
    create_table :works_tables do |t|
      t.text :name
      t.text :caption
      t.text :headline
      t.text :description
      t.text :url
      t.text :image_url
      t.text :repo_url
      t.text :twitter_id
      t.text :tags
      t.integer :ordinal
      t.timestamps
    end
  end
end
