class CreateSquares < ActiveRecord::Migration[7.0]
  def change
    create_table :squares do |t|
      t.string :type
      t.integer :owner_id

      t.timestamps
    end
  end
end
