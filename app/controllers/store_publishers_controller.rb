class StorePublishersController < ApplicationController
    def index
    @store = Store.find(params[:store_id]) 
    @publisher = @store.publishers
  end

  def new
      publisher.update(name: params[:name],
      square_footage: params[:square_footage],
      online_sales: params[:online_sales])
      redirect_to '/stores/publishers'
  end
end