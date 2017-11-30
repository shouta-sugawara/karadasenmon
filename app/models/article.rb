class Article < ActiveRecord::Base
  enum status: %w(draft published)
end
