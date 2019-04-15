class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.integer, :id
      t.string, :name
      t.string, :phone_number

      t.timestamps
    end
  end
end