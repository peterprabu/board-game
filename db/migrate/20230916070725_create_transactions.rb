class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :payer_id
      t.integer :payee_id
      t.integer :amount

      t.timestamps
    end
  end
end
