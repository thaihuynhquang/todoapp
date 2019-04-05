class TodosController < ApplicationController
  def show
    @todo = Todo.find(params[:id])
    #Todo.where("id = ?", params[:id]) # where(id: params[:id])
  end
  
  def create
    redirect_to root_path if Todo.create(todo_params)
  end

  def update
    @todo = Todo.find(params[:id])
    redirect_to @todo if @todo.update_attributes(todo_params)
  end

  # def destroy
  #   @todo = Todo.find(params[:id])  
  #   redirect_to root_path if @todo.destroy
  # end
  
  def destroy
    @todo = Todo.find(params[:id])
    redirect_to root_path if @todo.update_attributes(deleted: 'deleted')
  end
  
  private
  def todo_params
    params.require(:todo).permit(:name, :content)
  end

end
