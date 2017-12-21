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

  def upload_image
    if params[:file]
      FileUtils::mkdir_p(Rails.root.join("public/uploads/froala"))
      ext = File.extname(params[:file].original_filename)
      if IMAGE_EXT.include?(ext)
        file_name = "#{SecureRandom.urlsafe_base64}#{ext}"
        path = Rails.root.join("public/uploads/froala/", file_name)
        File.open(path, "wb") {|f| f.write(params[:file].read)}
        view_file = Rails.env.production? ? DOMAIN + "uploads/froala/" + file_name : "http://localhost:3000/" + "uploads/froala/" + file_name
        render :json => {:link => view_file}.to_json
      else
        render :text => {:link => nil}.to_json
      end
    else
      render :text => {:link => nil}.to_json
    end
  end

  private
  def set_notification
    @notification = Notification.find(params[:id])
  end

  def notification_params
    params.require(:notification).permit(:title, :content, :status, :has_content)
  end
end
