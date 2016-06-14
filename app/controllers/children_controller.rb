class ChildrenController < ApplicationController
  def show
    @child = Child.find(params[:id])
  end

  def index
    @children = Child.where(user_id: 1)
  end

  def edit
    @child = Child.find(params[:id])
  end

  def new
    @child = Child.new
  end

  def create
    @child = Child.new(child_params)
    if @child.save
      log_in @child
      flash[:success] = 'Welcome, ' + @child.first_name + '!'
      redirect_to 'index'
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:child).permit(:first_name, :middle_name, :last_name)
  end
end
