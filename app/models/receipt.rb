class Receipt < ApplicationRecord
  has_many :items
  has_many :userReceipts
  has_many :users, through: :userReceipts
  has_many :itemSplits, through: :items
  belongs_to :payer, class_name: "User"

end
