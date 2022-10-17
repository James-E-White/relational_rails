class StorePublishersController < ApplicationController
    def index
    @store = Store.find(params[:store_id]) 
    @publisher = @store.publishers
  end
end