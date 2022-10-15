class StoresController < ApplicationController
    def index 
     @stores = Store.all
     @stores = Store.order(:created_at)
    
    end
    
    def show 
     @store = Store.find(params[:id])
    end

   
end