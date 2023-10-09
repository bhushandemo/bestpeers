class TeachersController < ApplicationController
  before_action :authorize_teacher_or_admin, only: [:index , :new]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
    @teacher.students.build
  end

  def create
    @teacher = Teacher.create(teacher_params)
    @teacher.save
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, students_attributes: [:id, :student_name])
  end

  def authorize_teacher_or_admin
    authorize Teacher # This will automatically call TeacherPolicy#index?
  end


end
