class User < ActiveRecord::Base
  has_many :lists, dependent: :destroy
  has_many :items, through: :lists

  validates_presence_of :password, on: :create

  # before_create :set_auth_token

  # private

  # def set_auth_token
  #   return if auth_token.present?
  #   self.auth_token = generate_auth_token
  # end

  # def generate_auth_token
  #   loop do
  #     token = SecureRandom.hex
  #     break token unless self.class.exists?(auth_token: token)
  #   end
  # end
end
