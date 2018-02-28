class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.all.find_by_id(params[:id])
  end

  def create
    @school_class = SchoolClass.new(post_params(:title, :room_number))
    @school_class.save

    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.all.find_by_id(params[:id])
  end

  def update
    @school_class = SchoolClass.all.find_by_id(params[:id])
    @school_class.update(post_params(:title, :room_number))

    redirect_to school_class_path(@school_class)
  end

  private

  def post_params(*arg)
    params.require(:school_class).permit(*arg)
  end

end
