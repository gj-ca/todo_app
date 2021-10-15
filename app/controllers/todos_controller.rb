class TodosController < ApplicationController

    def index
        @todo_items = TodoItem.all
    end
    
    def new
    end
    
    def show
        @todo_item = TodoItem.find(params[:id])
    end

    def edit
    end

    private
end
