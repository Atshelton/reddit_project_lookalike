class User < ActiveRecord::Base
  has_many :links
  has_many :comments
  validates :email, format: {with: /@/}, uniqueness: true

  def self.signup(email)
    User.create(email: email)
  end
end
