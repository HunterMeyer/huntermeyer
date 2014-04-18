class CreateContacts < ActiveRecord::Migration
  create_table :contacts do |t|
    t.string :email
    t.string :content
  end
end
