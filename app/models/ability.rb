class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.is_student?
        can :create, Project
      elsif user.is_projects_coordinator?
        can :manage, Project
        can :manage, User
        can :manage, Proposal
      end
      can :manage, Project, :user_id => user.id
    end

  end
end
