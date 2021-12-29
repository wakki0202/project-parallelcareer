class Introduction < ApplicationRecord
  belongs_to :work, optional: true, foreign_key: "work_id"
  belongs_to :user, optional: true, foreign_key: "user_id"
  validates:user_id, {presence: true}

  def self.search(search)
      return Introduction.all unless search
      Introduction.where(['name LIKE ?', "%#{search}%"])
    end
end
