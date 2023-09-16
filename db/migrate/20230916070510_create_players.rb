class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.integer :money
      t.integer :current_position
      t.integer :current_square_id

      t.timestamps
    end
  end
end
