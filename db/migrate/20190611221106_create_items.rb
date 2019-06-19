class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :receipt_id
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
