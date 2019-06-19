class User < ApplicationRecord
  has_many :owes, foreign_key: :ower_id, class_name: 'Debt'
  has_many :payers, through: :owes
  has_many :paid, foreign_key: :payer_id, class_name: 'Debt'
  has_many :owers, through: :paid

  has_many :userReceipts
  has_many :receipts, through: :userReceipts

  has_many :paidReceipts, foreign_key: :payer_id, class_name: 'Receipt'

  has_many :itemSplits
  has_many :items, through: :itemSplits
end
