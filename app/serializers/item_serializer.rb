class ItemSerializer < ActiveModel::Serializer
  attributes :id, :receipt_id, :name, :cost
  has_many :itemSplits
end
