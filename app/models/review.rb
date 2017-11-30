class Review < ActiveRecord::Base
  enum status: %w(draft published)
end
