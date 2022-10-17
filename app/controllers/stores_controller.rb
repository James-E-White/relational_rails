class StoresController < ApplicationController
    def index 
     @stores = Store.all
     @stores = Store.order(:created_at)
    
    end
    
    def new

    end

    def create 
      store = Store.create(name: params[:name],
      store_id: params[:id],
      square_footage: params[:square_footage],
      online_sales: params[:online_sales])
      redirect_to "/stores"
    end

    def show 
     @store = Store.find(params[:id])
    end

   
end