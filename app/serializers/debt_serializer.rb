class DebtSerializer < ActiveModel::Serializer
  attributes :id, :payer_id, :ower_id, :amount_paid
end
