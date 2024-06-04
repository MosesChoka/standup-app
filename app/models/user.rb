class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
<<<<<<< HEAD
  # :confirmable, :lockable, :timeoutable, :trackable and 
  :omniauthable
  devise :database_authenticatable, :registerable,
=======
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
>>>>>>> users
         :recoverable, :rememberable, :validatable

  belongs_to :account, optional: true
end
