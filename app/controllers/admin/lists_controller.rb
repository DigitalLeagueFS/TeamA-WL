class Admin::ListsController < Admin::BaseController
  def index
    @lists = List.all.page(params[:page])
  end

  def edit
    @list = List.find(params[:id])
  end

  def show
    @list = List.find(params[:id])
    @wishes = @list.wishes.page(params[:page])
  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      redirect_to admin_list_path(@list)
    else
      render 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to admin_lists_path
  end

  private

  def list_params
    params.require(:list).permit(:title, :description)
  end
end
