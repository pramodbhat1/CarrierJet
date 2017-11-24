class Dummy1sController < ApplicationController
  before_action :set_dummy1, only: [:show, :edit, :update, :destroy]

  # GET /dummy1s
  # GET /dummy1s.json
  def index
    @dummy1s = Dummy1.all
  end

  # GET /dummy1s/1
  # GET /dummy1s/1.json
  def show
  end

  # GET /dummy1s/new
  def new
    @dummy1 = Dummy1.new
  end

  # GET /dummy1s/1/edit
  def edit
  end

  # POST /dummy1s
  # POST /dummy1s.json
  def create
    @dummy1 = Dummy1.new(dummy1_params)

    respond_to do |format|
      if @dummy1.save
        format.html { redirect_to @dummy1, notice: 'Dummy1 was successfully created.' }
        format.json { render :show, status: :created, location: @dummy1 }
      else
        format.html { render :new }
        format.json { render json: @dummy1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dummy1s/1
  # PATCH/PUT /dummy1s/1.json
  def update
    respond_to do |format|
      if @dummy1.update(dummy1_params)
        format.html { redirect_to @dummy1, notice: 'Dummy1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @dummy1 }
      else
        format.html { render :edit }
        format.json { render json: @dummy1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummy1s/1
  # DELETE /dummy1s/1.json
  def destroy
    @dummy1.destroy
    respond_to do |format|
      format.html { redirect_to dummy1s_url, notice: 'Dummy1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dummy1
      @dummy1 = Dummy1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dummy1_params
      params.fetch(:dummy1, {})
    end
end
