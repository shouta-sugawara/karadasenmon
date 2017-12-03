class ImageUploader < CarrierWave::Uploader::Base
  # リサイズしたり画像形式を変更するのに必要
  include CarrierWave::RMagick

  # 画像の上限を200pxにする
  process :resize_to_limit => [200, 200]

  storage :file

  def store_dir
   "uploads/#{model.class.to_s.underscore}/#{mounted_as}"
  end

  def filename
   "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  def extension_white_list
   %w(jpg jpeg gif png)
  end

  def secure_token
   var = :"@#{mounted_as}_secure_token"
   model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end
