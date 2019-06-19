class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|
      t.integer :payer_id
      t.integer :ower_id
      t.decimal :amount_paid, :default => 0

      t.timestamps
    end
  end
end
