# frozen_string_literal: true

class DiscGolfersController < ApplicationController
  def new
    @disc_golfer = DiscGolfer.new
  end

  def create
    @disc_golfer = DiscGolfer.new(disc_golfer_params)
    if @disc_golfer.save
      redirect_to @course
    else
      render 'new'
    end
  end

end
