class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :demo_url
      t.string :repo_url
      t.string :image_url
      t.timestamps
    end
  end
end
