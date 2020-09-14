class CreateHometowns < ActiveRecord::Migration[6.0]
  def change
    create_table :hometowns do |t|
      t.string :location

      t.timestamps
    end
  end
end
