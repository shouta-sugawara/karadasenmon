class Notification < ActiveRecord::Base
  enum status: %w(draft published)
end
