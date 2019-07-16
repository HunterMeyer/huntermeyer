class AddOrdinalToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :ordinal, :integer
  end
end
