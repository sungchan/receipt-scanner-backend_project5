class ReceiptSerializer < ActiveModel::Serializer
  attributes :id, :place_name, :img_url, :date, :subtotal, :tax, :total, :tip
  belongs_to :payer
  has_many :users, through: :userReceipt
  has_many :itemSplits, through: :items

  def itemSplits
    self.object.itemSplits.map do |i|
      {
        id: i.id,
        item_id: i.item.id,
        item: i.item.name,
        cost: i.item.cost,
        user_id: i.user.id,
        user: i.user.name,
        splitBetween: i.splitBetween
      }
    end
  end
end
