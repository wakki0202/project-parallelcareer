class Work < ApplicationRecord
  has_many :introductions, dependent: :destroy
  has_many :users, through: :introductions

  
  belongs_to :provider, optional: true

  has_many :details, dependent: :destroy
  has_many :users, through: :details
  accepts_nested_attributes_for :details
  belongs_to :admin, optional: true

  mount_uploaders :images, ImgUploader
  serialize :images, JSON # SQLiteを使っているときはこの列を追記

  def self.search(search)
      return Work.all unless search
      Work.where(['title LIKE ?', "%#{search}%"])
    end
end
