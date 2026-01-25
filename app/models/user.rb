class User < ApplicationRecord 
  require "digest/md5"
  rolify  
  
  attr_accessor :role # ensures that when the permission file loads a User object, it has access to a role attribute, even though roles are managed through an association and a gem.
  belongs_to :account, optional: true # the optional is set to true because an account may not exist when a user is first created 

  
  devise :invitable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :team_memberships
  has_many :teams, through: :team_memberships

  def avatar_url(size = 45)
    if email.present?
      gravatar_id = Digest::MD5.hexdigest(email.downcase)
      "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=identicon"
    else
      "https://secure.gravatar.com/avatar/?s=#{size}&d=mp"
    end
  end

end
