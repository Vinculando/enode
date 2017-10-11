class Ability
  include CanCan::Ability

  def initialize(user)
    case user
    when User
      can :read, Publication
      can [:create, :update], Postulation
      can :manage, User
    when Company
      can :manage, Publication
      can :read, Postulation
    end
  end

end
