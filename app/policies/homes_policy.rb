class HomesPolicy

  attr_reader :user

  def initialize(user)
    @user = user
  end

  def index?
    byebug
    user.admin?
  end
end
