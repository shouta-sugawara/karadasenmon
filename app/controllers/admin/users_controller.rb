class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end

  def create
    User.create(user_params)
    redirect_to :back
  end

  def update
    User.find(params[:id]).update(user_params)
    redirect_to :back
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to :back
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :name, :profile_img_url)
  end
end
