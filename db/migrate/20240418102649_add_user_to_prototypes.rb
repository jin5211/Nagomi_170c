class AddUserToPrototypes < ActiveRecord::Migration[7.0]
  def change
    add_reference :prototypes, :user, foreign_key: true, null: false
  end
end