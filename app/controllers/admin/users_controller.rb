class Admin::UsersController < Admin::BaseController
  skip_before_filter :verify_authenticity_token

  def index
    @users = User.all
  end

  def create
    user = User.create(user_params)
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
    params.require(:user).permit(:email, :password, :name)
  end
end
