class UserController < ApplicationController
  def show

  end

  def update
    if current_user.update user_params
      redirect_to user_path, notice:"修改成功."
    else
      render :show
    end

  end
  private

  def user_params
    params.require(:user).permit!
  end
end
