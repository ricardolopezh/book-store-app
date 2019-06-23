class StoresController < ApplicationController
  def index
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(post_params)

    if @store.save
      redirect_to @store
    else
      render 'new'
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def index
    @stores = Store.all.order("created_at DESC").paginate(page: params[:page], per_page: 5)
  end

  private

  def post_params
    params.require(:store).permit(:codename, :address, :phone)
  end

end
