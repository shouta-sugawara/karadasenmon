class WelcomeController < ApplicationController

  def index
    @notifications = Notification.published
  end

  def diagnosis
  end

  def traffic_accident
  end

  def recruitment
  end

  def about
  end
end
