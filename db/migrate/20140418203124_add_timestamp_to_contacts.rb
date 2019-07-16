class AddTimestampToContacts < ActiveRecord::Migration[5.2]
  def change
    change_table :contacts do |t|
      t.timestamps
    end
  end
end
