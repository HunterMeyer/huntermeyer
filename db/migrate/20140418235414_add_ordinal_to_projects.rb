class AddOrdinalToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :ordinal, :integer
  end
end
