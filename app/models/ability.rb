class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.class.name === 'Users::Owner'
      can :access, :rails_admin

      can :manage, :all
    end
  end
end
