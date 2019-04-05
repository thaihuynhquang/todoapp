class HomeController < ApplicationController
  def index
    @todos = Todo.where(deleted: nil).order(created_at: :desc)
    # binding.pry
  end
end
