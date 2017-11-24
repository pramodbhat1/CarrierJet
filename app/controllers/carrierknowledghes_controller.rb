class CarrierknowledghesController < ApplicationController
  before_action :set_carrierknowledghe, only: [:show, :edit, :update, :destroy]

  # GET /carrierknowledghes
  # GET /carrierknowledghes.json
  def index
    @carrierknowledghes = Carrierknowledghe.all
  end

  # GET /carrierknowledghes/1
  # GET /carrierknowledghes/1.json
  def show
  end

  # GET /carrierknowledghes/new
  def new
    @carrierknowledghe = Carrierknowledghe.new
  end

  # GET /carrierknowledghes/1/edit
  def edit
  end

  # POST /carrierknowledghes
  # POST /carrierknowledghes.json
  def create
    @carrierknowledghe = Carrierknowledghe.new(carrierknowledghe_params)

    respond_to do |format|
      if @carrierknowledghe.save
        format.html { redirect_to @carrierknowledghe, notice: 'Carrierknowledghe was successfully created.' }
        format.json { render :show, status: :created, location: @carrierknowledghe }
      else
        format.html { render :new }
        format.json { render json: @carrierknowledghe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrierknowledghes/1
  # PATCH/PUT /carrierknowledghes/1.json
  def update
    respond_to do |format|
      if @carrierknowledghe.update(carrierknowledghe_params)
        format.html { redirect_to @carrierknowledghe, notice: 'Carrierknowledghe was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrierknowledghe }
      else
        format.html { render :edit }
        format.json { render json: @carrierknowledghe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrierknowledghes/1
  # DELETE /carrierknowledghes/1.json
  def destroy
    @carrierknowledghe.destroy
    respond_to do |format|
      format.html { redirect_to carrierknowledghes_url, notice: 'Carrierknowledghe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrierknowledghe
      @carrierknowledghe = Carrierknowledghe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrierknowledghe_params
      params.fetch(:carrierknowledghe, {})
    end
end
