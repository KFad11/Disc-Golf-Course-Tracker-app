# frozen_string_literal: true

class BasketsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @basket = @course.baskets.create(basket_params)

    if @basket.save
      redirect_to course_path(@course)
    else
      render "courses/show"
    end
  end

  def index
    redirect_to course_path(params[:course_id])
  end

  def destroy
    @course = Course.find(params[:course_id])
    @basket = @course.baskets.find(params[:id])
    @basket.destroy
    redirect_to course_path(@course)
  end

  def longest_par
    @course = Course.find(params[:course_id])
    @course.baskets.maximum(:par)

    respond_to do |format|
      format.html { redirect_to courses_path }
      format.json { render json: @course.baskets.to_json, status: :created }
    end
  end

private

  def basket_params
    params.require(:basket).permit(:basket_number, :par)
  end
end
