class AddUserToHometown < ActiveRecord::Migration[6.0]
  def change
    add_reference :hometowns, :user, index: true
  end
end