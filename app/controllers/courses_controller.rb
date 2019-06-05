class CoursesController < ApplicationController
  def new; end

  def create
    @course = Course.new(course_params)

    @course.save
    redirect_to @course
  end

private
  def course_params
    params.require(:course).permit(:name, :location)
  end
end
