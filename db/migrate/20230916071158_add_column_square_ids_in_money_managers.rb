class AddColumnSquareIdsInMoneyManagers < ActiveRecord::Migration[7.0]
  def change
    add_column :money_managers, :square_ids, :integer, array: true, default: []
  end
end
