class SchoolClassesController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def new
    @school_class = SchoolClass.new
    render "edit"
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def edit
  end

  def update
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  private
  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def set_student
    @school_class = SchoolClass.find(params[:id])
  end
end
