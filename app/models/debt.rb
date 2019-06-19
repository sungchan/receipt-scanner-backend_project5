class Debt < ApplicationRecord
  belongs_to :payer, class_name: 'User'
  belongs_to :ower, class_name: 'User'
end
