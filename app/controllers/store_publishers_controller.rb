class StorePublishersController < ApplicationController
    def index
    @store = Store.find(params[:store_id]) 
    @publisher = @store.publishers
  end

  def create
    # @store = Store.find(params[:store_id])
    # @publisher = @store.publishers.create!(@store_pub_params)
    #  redirect_to "/stores/#{@store.id}/publishers"
  end

  def new
    @store = Store.find(params[:store_id])
    @publisher = @store.publishers.create!(@store_pub_params)
   
  end
# private
#   def store_pub_params
#     @store_pub_params = params_permit(:name, :cost, :figurines_available)
#   end
end