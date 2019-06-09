# frozen_string_literal: true

class VisitsController < ApplicationController
  def new
    @visit = Visit.new
  end

  def create
    # binding.pry
    @course = Course.find(params[:course_id])
    @visit = @course.visits.create(visit_params)
    @visit.save
    redirect_to course_visits_path(@course)
  end

  def index
    # binding.pry
    @visits = Visit.all
  end

  def destroy
    # binding.pry
    @course = Course.find(params[:course_id])
    @visit = @course.visits.find(params[:id])
    @visit.destroy
    redirect_to course_visit_path(@course, visit)
  end

  def show
    @visit = Visit.find(params[:id])
  end

private

  def visit_params
    params.require(:visit).permit(:day_visited)
  end
end
