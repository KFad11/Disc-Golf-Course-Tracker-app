class CoursesController < ApplicationController
  before_action :authenticate_disc_golfer!
  def new; end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def index
    @courses = Course.all
  end

private
  def course_params
    params.require(:course).permit(:name, :location)
  end
end
