class CarriersController < ApplicationController
  before_action :set_carrier, only: [:show, :edit, :update, :destroy]

  # GET /carriers
  # GET /carriers.json
  def index
    @carriers = Carrier.where("tracking like (?)","%#{params[:search]}")
  end

  # GET /carriers/1
  # GET /carriers/1.json
  def show
  end

  # GET /carriers/new
  def new
    @carrier = Carrier.new
  end

  # GET /carriers/1/edit
  def edit
  end

  # POST /carriers
  # POST /carriers.json
  def create
    @carrier = Carrier.new(carrier_params)

    respond_to do |format|
      if @carrier.save
        format.html { redirect_to @carrier, notice: 'Carrier was successfully created.' }
        format.json { render :show, status: :created, location: @carrier }
      else
        format.html { render :new }
        format.json { render json: @carrier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carriers/1
  # PATCH/PUT /carriers/1.json
  def update
    respond_to do |format|
      if @carrier.update(carrier_params)
        format.html { redirect_to @carrier, notice: 'Carrier was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrier }
      else
        format.html { render :edit }
        format.json { render json: @carrier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carriers/1
  # DELETE /carriers/1.json
  def destroy
    @carrier.destroy
    respond_to do |format|
      format.html { redirect_to carriers_url, notice: 'Carrier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def append_message_method
    @current_track_value = params[:entered_value]
    @next_track_value = ""
    arr = ["STUDENT", "TRAINEE SOFTWARE DEVELOPER", "JUNIOR SOFTWARE DEVELOPER", "SENIOR SOFTWARE DEVELOPER","GENERAL MANAGER","SENIOR MANAGER","CEO"]
    if arr.include?(@current_track_value)
      old_index_value = arr.find_index(@current_track_value)
      new_index_value = old_index_value+1
      @next_track_value = arr[new_index_value]
    end
    # render json: {}
    # respond_to do |format|
      # format.json {render json: {next_track_value: @next_track_value, current_track_value: @current_track_value}}
      # format.js
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrier
      @carrier = Carrier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrier_params
      params.require(:carrier).permit(:tracking)
    end
end
