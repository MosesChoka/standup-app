class User < ApplicationRecord 
  :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  belongs_to :account, optional: true
end
