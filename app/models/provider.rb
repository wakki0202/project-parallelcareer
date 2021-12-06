class Provider < ApplicationRecord
  has_many :introductions, dependent: :destroy
  accepts_nested_attributes_for :introductions, allow_destroy: true
  has_many :users, through: :introductions

   mount_uploaders :images, ImgUploader
  serialize :images, JSON # SQLiteを使っているときはこの列を追記
end
