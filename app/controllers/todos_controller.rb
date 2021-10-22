class TodosController < ApplicationController
    before_action :find_todo_item, only: [:show, :edit, :update, :destroy]

    def index
        @todo_items = TodoItem.includes(:user, :category).all
    end
    
    def new
        @todo_item = TodoItem.new
        @users = User.select(:id, :name)
        @categories = Category.select(:id, :name)
    end

    def create
        TodoItem.create!(todo_params)
        redirect_to root_path
    end
    
    def show
        if @todo_item
            render :show
        else
            redirect_to root_path
        end

    end

    def edit
        @users = User.all
        @categories = Category.all
    end

    def update
        @todo_item.update(todo_params)
        redirect_to edit_todo_path
    end

    def destroy
        @todo_item.destroy()
        redirect_to root_path
    end

    private
    def todo_params
        params.require(:todo_item).permit(:title, :user_id, :category_id)
    end

    def find_todo_item
        @todo_item = TodoItem.find(params[:id])
    end
end
