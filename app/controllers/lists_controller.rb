class ListsController < ApplicationController

  def create
    @list=List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
      flash[:complete]="Book was successfully created."
    else
      @lists=List.all
      render:index
    end
  end

  def index
    @lists=List.all
    @list=List.new
  end

  def show
    @list=List.find(params[:id])
  end

  def root
  end

  def edit
    @list=List.find(params[:id])
  end

  def update
    @list=List.find(params[:id])
    if @list.update(list_params)
       redirect_to list_path(@list.id)
       flash[:complete] = "Book was successfully edited."
    else
       render:edit
    end
  end

  def  destroy
    @list=List.find(params[:id])
    if @list.destroy
      redirect_to index_list_path
      flash[:complete]= "Book was successfully destroyed"
    end
  end

  private
  def list_params
    params.require(:list).permit(:title,:body)
  end

end


