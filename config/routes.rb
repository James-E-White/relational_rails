Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stores', to: 'stores#index'
  get '/stores/new', to: 'stores#new'

  post '/stores', to: 'stores#create'
  get '/stores/:id', to: 'stores#show'
  patch "/stores/:id", to: "stores#update"
  get '/publishers', to: 'publishers#index'

  get '/publishers/:id', to: 'publishers#show' 
  get '/stores/:store_id/publishers', to: 'store_publishers#index'
 
  get '/stores/:id/edit', to: 'stores#edit'
  get '/stores/:store_id/publishers/new', to: 'store_publishers#new'
  post '/stores/:store_id/publishers', to: 'store_publishers#create'
 
end

