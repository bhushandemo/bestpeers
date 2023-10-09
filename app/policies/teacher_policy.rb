class TeacherPolicy < ApplicationPolicy

  def index
    byebug
    #binding.pry
    user.admin?
  end

  def create?
    #byebug
    user.admin?
  end
end
