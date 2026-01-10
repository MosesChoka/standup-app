class User < ApplicationRecord 
  rolify  
  
  #attr_accessor :role # ensures that when the permission file loads a User object, it has access to a role attribute, even though roles are managed through an association and a gem.
  #
  :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable


  belongs_to :account, optional: true # the optional is set to true because an account may not exist when a user is first created 
end
