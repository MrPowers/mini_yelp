class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :read, :all
    elsif user.role == "author"
      can :read, :all
      can :create, [Restaurant, Review]
      can :update, Restaurant do |restaurant|
        restaurant && restaurant.user == user
      end
      can :destroy, Restaurant do |restaurant|
        restaurant && restaurant.user == user
      end
      can :update, Review do |review|
        review && review.user == user
      end
      can :destroy, Review do |review|
        review && review.user == user
      end
    elsif user.role == "admin"
      can :manage, :all
    end
  end
end
