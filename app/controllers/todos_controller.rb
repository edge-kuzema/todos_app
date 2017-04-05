class TodosController < ApplicationController

  def index
    if params[:filter]
      @todos = Todo.where(complete: params[:filter]).order(id: :desc)
    else
      @todos = Todo.all.order(id: :desc)
    end
  end

  def create
    @todo = Todo.new(todos_params)
    @todo.save
    redirect_to root_path
  end


  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.update_attributes(todos_params)
    redirect_to root_path
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
    redirect_to root_path
  end

  def destroy_completed
    @todos = Todo.where(complete: true)
    @todos.destroy_all
    redirect_to root_path
  end

  private

  def todos_params
    params.require(:todo).permit(:name, :complete, :filter)
  end

end
