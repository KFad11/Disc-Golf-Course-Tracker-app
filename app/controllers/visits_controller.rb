# frozen_string_literal: true

class VisitsController < ApplicationController
  def new
    @visit = Visit.new
  end

  def create
    @course = Course.find(params[:course_id])
    @visit = @course.visits.create(visit_params)
    @visit.save
    redirect_to course_visits_path(@visit)
  end

  def index
    # binding.pry
    @visits = Visit.all
  end

  def destroy
    @course = Course.find(params[:course_id])
    @visit = @course.visits.find(params[:id])
    @visit.destroy
    redirect_to course_path(@course)
  end

private

  def visit_params
    params.require(:visit).permit(:day_visited)
  end
end
