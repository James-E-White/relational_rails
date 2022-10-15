Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stores', to: 'stores#index'
  get '/stores/:id', to: 'stores#show'
  get '/publishers', to: 'publishers#index'
  get '/publishers/:id', to: 'publishers#show' 
  get '/stores/:store_id/publishers', to: 'store_publishers#index'
end

