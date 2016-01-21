class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all.order("created_at DESC")
  end

  def new
    @list = current_user.lists.build
  end

  def create
    @list = current_user.lists.build(list_params)

    if @list.save
      redirect_to @list, notice: "Successfully created new list."
    else
      render 'new'
    end
  end

  def show
    # @list = List(find_list)
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to @list, notice: "List was successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @list.destroy
    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:title, :image, :item1, :item2, :item3, :item4, :item5)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
