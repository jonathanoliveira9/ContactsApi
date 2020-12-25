class AddContactsToAddress < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :contact, null: false, foreign_key: true
  end
end
