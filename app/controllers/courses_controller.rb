# frozen_string_literal: true

class CoursesController < ApplicationController
  before_action :authenticate_disc_golfer!
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    # binding.pry
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course.to_json, status: :created }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def index
    @courses = Course.all
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to @course
    else
      render "edit"
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end

private

  def course_params
    params.require(:course).permit(:name, :location)
  end
end
