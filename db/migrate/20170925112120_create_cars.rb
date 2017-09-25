class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :make
      t.references :game

      t.timestamps
    end
  end
end
