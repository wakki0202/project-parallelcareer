class ProviderFile < ApplicationRecord
  belongs_to :provider
   # 画像アップロードのための記述
  mount_uploader :file, ImgUploader
end
