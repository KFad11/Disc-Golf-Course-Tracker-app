class CoursesController < ApplicationController
  def new; end

  def create
    @course = Course.new(course_params)

    @course.save
    redirect_to @course
  end

  def show
    @course = Course.find(params[:id])
  end

private
  def course_params
    params.require(:course).permit(:name, :location)
  end
end
