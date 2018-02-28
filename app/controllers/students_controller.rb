class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def index
    @students = Student.all
  end


  def show
    @student = Student.all.find_by_id(params[:id])
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.all.find_by_id(params[:id])
  end

  def update
    @student = Student.all.find_by_id(params[:id])
    @student.update(post_params(:first_name, :last_name))

    redirect_to student_path(@student)
  end

  private

  def post_params(*arg)
    params.require(:student).permit(*arg)
  end

end
