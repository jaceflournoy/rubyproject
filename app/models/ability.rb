class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :create, :read, :update, :destroy, to: :crud
    user ||= User.new # guest user (not logged in)
    cannot :read, :all # Guest

    if user.role == "admin"
    can :manage, :all
    end

    if user.role == "dealership_owner"
      can :manage, :all
    end

    if user.role == "sales_manager"
      can :manage, Sale
      can :manage, Quote
      can :manage, Customer
      can :read, Loan
      can :read, Car
    end

    if user.role == "finance_manager"
      can :manage, Quote
      can :manage, Loan
      can :manage, Quotesold
      can :read, Customer
      can :read, Car
    end

    if user.role == "inventory_manager"
      can :manage, Car
    end

    if user.role == "sales_person"
      can :manage, Quote
      can :manage, Customer
      can :read, Car
      can :read, Loan
    end


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
