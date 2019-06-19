class UserReceiptSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :receipt_id
  belongs_to :user
end
