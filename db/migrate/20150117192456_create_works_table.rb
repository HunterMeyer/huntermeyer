# frozen_string_literal: true

class CreateWorksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.text :name
      t.text :caption
      t.text :position
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
