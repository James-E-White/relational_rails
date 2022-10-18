Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stores', to: 'stores#index'
  get '/stores/new', to: 'stores#new'
  get '/stores/:id', to: 'stores#show'
  get '/publishers', to: 'publishers#index'
  get '/publishers/:id', to: 'publishers#show' 
  get '/stores/:store_id/publishers', to: 'store_publishers#index'
  post '/stores', to: 'stores#create'
  get '/stores/:id/edit', to: 'stores#edit'
  patch "/stores/:id", to: "stores#update"
  get '/stores/:store_id/publishers/new', to: 'store_publishers#new'
end

