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

  private

  def post_params
    params.require(:store).permit(:codename, :address, :phone)
  end

end
