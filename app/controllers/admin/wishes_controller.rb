class Admin::WishesController < Admin::BaseController

  def edit
    @list = List.find(params[:list_id])
    @wish = @list.wishes.find(params[:id])
  end

  def update
    @list = List.find(params[:list_id])
    @wish = @list.wishes.find(params[:id])

    if @wish.update(wish_params)
      redirect_to list_path(@list)
    else
      render 'edit'
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @wish = @list.wishes.find(params[:id])
    @wish.destroy
    redirect_to list_path(@list)
  end

  private

  def wish_params
    params.require(:wish).permit(:title, :price, :comment)
  end
end
