# emails:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets
  has_secure_password

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "must be valid email adress"}
end
