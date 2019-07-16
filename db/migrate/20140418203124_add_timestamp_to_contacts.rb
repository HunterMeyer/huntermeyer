# frozen_string_literal: true

class AddTimestampToContacts < ActiveRecord::Migration[5.2]
  def change
    change_table(:contacts, &:timestamps)
  end
end
