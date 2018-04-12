class AddVisibleToWorks < ActiveRecord::Migration
  def change
    add_column :works, :visible, :boolean, default: true
  end
end
