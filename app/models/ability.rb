class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, :all
    can :manage, :all if user.role == "admin"
    can :manage, :all if user.role == "dealership_owner"
    can :manage, :all if user.role == "sales_manager"
    can :manage, :all if user.role == "finance_manager"
    can :manage, :all if user.role == "inventory_manager"
    can :manage, :all if user.role == "sales_person"
#TODO ADD THESE AUTHORIZATIONS

    # Define abilities for the passed in user here. For example
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
