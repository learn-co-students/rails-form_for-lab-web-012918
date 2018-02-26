class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
    render "edit"
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def index
    @students = Student.all
  end

  def show
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
