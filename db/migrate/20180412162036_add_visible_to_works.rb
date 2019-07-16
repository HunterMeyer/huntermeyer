# frozen_string_literal: true

class AddVisibleToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :visible, :boolean, default: true
  end
end
