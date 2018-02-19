class Blog < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  enum status: %w(draft published)
  enum store_type: %i(にこにこ鍼灸整骨院 にこにこ整骨院 すがわら整骨院)
end
