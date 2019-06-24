class StoresController < ApplicationController
  def index
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)

    if @store.save
    	flash[:success] = "Store location added"
      redirect_to stores_path
    else
    	#Need to improve this
      render 'new'
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def index
    @stores = Store.all.order("created_at DESC").paginate(page: params[:page], per_page: 10)
  end

  def edit
  	@store = Store.find(params[:id])
  end

  def update
  	@store = Store.find(params[:id])
  	@store.update_attributes(store_params)
  	flash[:primary] = "Store information updated"
    redirect_to stores_path
  end

  def destroy
    @stores = Store.find(params[:id])
    @stores.destroy
    flash[:danger] = "Store location deleted"
    redirect_to stores_path
  end

  private

  def store_params
    params.require(:store).permit(:codename, :address, :phone)
  end

end
