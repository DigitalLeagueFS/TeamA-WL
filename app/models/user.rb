class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lists

  has_attached_file :avatar, styles: {medium: "300x300>", small: "100x100>" }, default_url: "/system/users/avatars/default/:style/unnamed.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
