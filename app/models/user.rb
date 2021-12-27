class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, invite_for: 24.hours


    has_many :introductions, dependent: :destroy
    has_many :works, through: :introductions, dependent: :destroy

    has_many :details, dependent: :destroy
    has_many :works,through: :details, dependent: :destroy

    validates :phonenumber, numericality: true
    #validates :banknumber, numericality: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }}
end
