class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.integer :payer_id
      t.string :place_name
      t.string :img_url
      t.string :date, :default => 'N/A'
      t.decimal :subtotal, :default => 0
      t.decimal :tax, :default => 0
      t.decimal :tip, :default => 0
      t.decimal :total, :default => 0

      t.timestamps
    end
  end
end
