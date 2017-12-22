class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end

  def create
    binding.pry
    user = User.create(user_params)
    user.admin!
    redirect_to :back
  end

  def update
    binding.pry
    User.find(params[:id]).update(user_params)
    redirect_to :back
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to :back
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :name)
  end
end
