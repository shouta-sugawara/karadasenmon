class Blog < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  enum status: %w(draft published)
end
