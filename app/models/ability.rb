class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.is_student?
        can :create, Project
      end
      can :manage, Project, :user_id => user.id
    end

  end
end
