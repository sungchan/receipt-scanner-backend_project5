Rails.application.routes.draw do
  resources :item_splits
  resources :items
  resources :receipts
  resources :user_receipts
  resources :debts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
