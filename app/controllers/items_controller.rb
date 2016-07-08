class ItemsController < ApplicationController
  def create
    @user = current_user
    @item = @user.items.new(item_params)
    @item.user = current_user
    @new_item = Item.new

    if @item.save
      flash[:notice] = "Task saved successfully"
    else
      flash[:error] = "Task failed to save"
    end

  redirect_to user_path(current_user)
  end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Task completed"
    else
      flash[:notice] = "There was an error completing the task. Please try again."
    end

    redirect_to user_path(current_user)
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
