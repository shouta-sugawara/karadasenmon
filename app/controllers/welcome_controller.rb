class WelcomeController < ApplicationController

  def index
    @notifications = Notification.published.order(created_at: :desc).limit(50)
  end

  def diagnosis
  end

  def traffic_accident
  end

  def recruitment
  end

  def about
  end

  def bruise
  end

  def muscle
  end

  def sleeping
  end

  def lumbago
  end

  def pain_shoulder
  end

  def knee_pain
  end

  def back_pain
  end

  def stiff_shoulder
  end

  def tenosynovitis
  end

  def hallux_valgus
  end

  def flat_foot
  end

  def posture
  end
end
