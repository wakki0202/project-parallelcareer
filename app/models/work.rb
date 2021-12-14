class Work < ApplicationRecord
  has_many :introductions, dependent: :destroy
  has_many :users, through: :introductions
  has_many :details

   mount_uploaders :images, ImgUploader
  serialize :images, JSON # SQLiteを使っているときはこの列を追記
end
