# frozen_string_literal: true

class BasketsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @basket = @course.baskets.create(basket_params)
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:course_id])
    @basket = @course.baskets.find(params[:id])
    @basket.destroy
    redirect_to course_path(@course)
  end

private
  def basket_params
    params.require(:basket).permit(:basket_number, :par)
  end
end
