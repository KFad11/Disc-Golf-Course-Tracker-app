# frozen_string_literal: true

class VisitsController < ApplicationController
  def new
    @visit = Visit.new
    @course = Course.find(params[:course_id])
  end

  def create
    @course = Course.find(params[:course_id])
    @visit = @course.visits.new(visit_params)
    @visit.disc_golfer = current_disc_golfer
    if @visit.save
      redirect_to course_visits_path(@course)
    else
      render "new"
    end
  end

  def index
    @course = Course.find(params[:course_id])
    @visits = @course.visits
  end

  def destroy
    course = Course.find(params[:course_id])
    visit = course.visits.find(params[:id])
    visit.destroy
    redirect_to course_visits_path(course)
  end

  def show
    @visit = Visit.find(params[:id])
  end

private

  def visit_params
    params.require(:visit).permit(:day_visited)
  end
end
