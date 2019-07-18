class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present? && user.role_id == 1
      case user.role_id
      when 1
        can :manage, :all
      when 2
        can :manage, Blog, Category, Hashtag, BlogDetail
      end 
    end
  end
end