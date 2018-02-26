class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    set_student
  end

  def edit
    set_student
  end

  def update
    @student = set_student
    @student.update(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def post_params(*args)
    params.require(:student).permit(*args)
  end

end
