class Admin::NotificationsController < Admin::BaseController
  before_action :set_notification, only: [:show, :edit, :update, :destroy]

  def index
    @notifications = Notification.all
  end

  def show
    if @notification.published?
      redirect_to notification_path(@notification)
    end
  end

  def new
    @notification = Notification.new
  end

  def create
    notification = Notification.create()
    redirect_to edit_admin_notification_path(notification.id)
  end

  def edit
  end

  def update
    @notification.update(notification_params)
    if params["commit"] == "プレビューを見る"
      redirect_to admin_notification_path(params[:id])
    elsif params["commit"] == "公開された記事を見る"
      redirect_to :controller => "notifications", :action => "show", id: params[:id]
    elsif request.xhr?
      render json: {
        ok: true
      }
    else
      redirect_to admin_notifications_path
    end
  end

  def destroy
    @notification.destroy
    redirect_to admin_notifications_path
  end

  private
  def set_notification
    @notification = Notification.find(params[:id])
  end

  def notification_params
    params.require(:notification).permit(:title, :content, :status, :has_content)
  end
end
