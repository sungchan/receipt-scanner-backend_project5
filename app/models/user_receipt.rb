class UserReceipt < ApplicationRecord
  belongs_to :user
  belongs_to :receipt
end
