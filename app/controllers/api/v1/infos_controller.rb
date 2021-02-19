class Api::V1::InfosController < ApplicationController

  before_action :set_info, only: [:show, :update, :destroy]

  # GET /users
  def index
    @infos = Info.all

    render json: @infos
  end

  # GET /users/1
  def show
    render json: @info
  end

  # POST /users
  def create
    @info = Info.new(info_params)

    if @info.save
      render json: @info, status: :created, location: @info
    else
      render json: @info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @info.update(info_params)
      render json: @info
    else
      render json: @info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def info_params
      params.require(:info).permit(:capacity, :dates, :rentalfee, :ceremonyfee, :perperson, :otherpp, :notes, :venue_id)
    end

end
