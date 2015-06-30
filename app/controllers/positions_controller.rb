class PositionsController < ApplicationController
  def index
    @positions = Position.all
    render json: @positions
  end

  def edit
    @positions = Position.all
    render edit.html.erb
  end
end

