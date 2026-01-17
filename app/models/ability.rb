class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :read, ActivityController

    if user.has_role?(:user, user.account)
      can [:me, :password, :update_me, :update_password], User
      can [:feed, :mine], ActivityController
      cannot :manage, Account
    elsif user.has_role?(:admin, user.account)
      can :manage, :all
    else
      can [:feed, :mine], ActivityController
      can [:new, :create], Account
    end
  end

end