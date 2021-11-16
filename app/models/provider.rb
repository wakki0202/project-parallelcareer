class Provider < ApplicationRecord
  has_many :introductions, dependent: :destroy
  has_many :users, through: :introductions
end
