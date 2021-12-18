class Work < ApplicationRecord
  has_many :introductions, dependent: :destroy
  has_many :users, through: :introductions, through: :details

  has_many :details, dependent: :destroy
  accepts_nested_attributes_for :details
  belongs_to :provider, optional: true
  belongs_to :admin, optional: true

  mount_uploaders :images, ImgUploader
  serialize :images, JSON # SQLiteを使っているときはこの列を追記
end
