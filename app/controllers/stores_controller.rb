class StoresController < ApplicationController
    def index 
     @stores = Store.all
     @stores = Store.order(:created_at)
    
    end
    
    def new

    end

    def create 
      store = Store.create!(name: params[:name],
      square_footage: params[:square_footage],
      online_sales: params[:online_sales])
      redirect_to "/stores"
    end

    def show 
     @store = Store.find(params[:id])
     
    end

    def edit
    @store = Store.find(params[:id])
    
    end

    def update 
      store = Store.find(params[:id])
      store.update(name: params[:name],
      square_footage: params[:square_footage],
      online_sales: params[:online_sales])
      redirect_to '/stores'
    end 
    
    
   
end