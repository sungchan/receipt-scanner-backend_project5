class ItemSplitSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :user_id, :splitBetween
  belongs_to :item
  belongs_to :user
end
