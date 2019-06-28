class AssignmentsController < ApplicationController

  def index
    @assignments = Assignment.all.order("created_at DESC").paginate(page: params[:page], per_page: 10)
  end

  def new
    @assignment = Assignment.new
    @store_list = Store.all.map { |store| [ store.to_s, store.id ] }
    @book_list = Book.all.map { |book| [ book.to_s, book.id ] }
  end

  def create
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      flash[:success] = "Book added"
      redirect_to assignments_path
    else
      render 'new'
    end
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def edit
    @assignment = Assignment.find(params[:id])
    @store_list = Store.all.map { |store| [ store.to_s, store.id ] }
    @book_list = Book.all.map { |book| [ book.to_s, book.id]}
  end

  def update
    @assignment = Assignment.find(params[:id])
    @assignment.update_attributes(assignment_params)
    flash[:primary] = "Information updated"
    redirect_to assignments_path
  end

  def destroy
    @assignments = Assignment.find(params[:id])
    @assignments.destroy
    flash[:danger] = "Books deleted"
    redirect_to assignments_path
  end

  private

  def assignment_params
    params.require(:assignment).permit(:store_id, :book_id, :quantity)
  end
end
