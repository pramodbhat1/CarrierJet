class AllhtmlsController < ApplicationController
  before_action :set_allhtml, only: [:show, :edit, :update, :destroy]

  # GET /allhtmls
  # GET /allhtmls.json
  def index
    @allhtmls = Allhtml.all
  end

  # GET /allhtmls/1
  # GET /allhtmls/1.json
  def show
  end

  # GET /allhtmls/new
  def new
    @allhtml = Allhtml.new
  end

  # GET /allhtmls/1/edit
  def edit
  end

  # POST /allhtmls
  # POST /allhtmls.json
  def create
    @allhtml = Allhtml.new(allhtml_params)

    respond_to do |format|
      if @allhtml.save
        format.html { redirect_to @allhtml, notice: 'Allhtml was successfully created.' }
        format.json { render :show, status: :created, location: @allhtml }
      else
        format.html { render :new }
        format.json { render json: @allhtml.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allhtmls/1
  # PATCH/PUT /allhtmls/1.json
  def update
    respond_to do |format|
      if @allhtml.update(allhtml_params)
        format.html { redirect_to @allhtml, notice: 'Allhtml was successfully updated.' }
        format.json { render :show, status: :ok, location: @allhtml }
      else
        format.html { render :edit }
        format.json { render json: @allhtml.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allhtmls/1
  # DELETE /allhtmls/1.json
  def destroy
    @allhtml.destroy
    respond_to do |format|
      format.html { redirect_to allhtmls_url, notice: 'Allhtml was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allhtml
      @allhtml = Allhtml.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allhtml_params
      params.fetch(:allhtml, {})
    end
end
