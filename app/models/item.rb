class Item < ApplicationRecord
  has_many :itemSplits
  has_many :users, through: :itemSplits
  belongs_to :receipt
end
