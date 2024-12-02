class User < ApplicationRecord 
  rolify
  
  :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable


  belongs_to :account, optional: true # the optional is set to true because an account may not exist when a user is first created 
end
