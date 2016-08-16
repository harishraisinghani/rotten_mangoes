class User < ApplicationRecord

  has_secure_password

  validates :email, presence: true
  validates :firstname, presence: true
  validates :lasatname, presence: true
  validates :password, length: { 6..20 }, on: :create

end
