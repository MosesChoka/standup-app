class User < ApplicationRecord 
  rolify
  :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  belongs_to :account, optional: true
end
