class CreateMoneyManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :money_managers do |t|
      t.integer :player_id
      t.integer :total_amount

      t.timestamps
    end
  end
end
