class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new 

    return unless user.account.present?

    if user.has_role?(:user, user.account)
      can [:me, :password, :update_me, :update_password], User
      can [:feed, :mine], ActivityController
      cannot :manage, Account

    elsif user.has_role?(:admin, user.account)
      can :manage, :all

    else

      can [:new, :create], Account
    end 
  end
end