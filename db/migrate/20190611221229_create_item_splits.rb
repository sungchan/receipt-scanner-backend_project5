class CreateItemSplits < ActiveRecord::Migration[5.2]
  def change
    create_table :item_splits do |t|
      t.integer :item_id
      t.integer :user_id
      t.integer :splitBetween

      t.timestamps
    end
  end
end
