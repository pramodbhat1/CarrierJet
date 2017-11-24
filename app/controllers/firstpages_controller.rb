class FirstpagesController < ApplicationController
  before_action :set_firstpage, only: [:show, :edit, :update, :destroy]

  # GET /firstpages
  # GET /firstpages.json
  def index
    @firstpages = Firstpage.all
  end

  # GET /firstpages/1
  # GET /firstpages/1.json
  def show
  end

  # GET /firstpages/new
  def new
    @firstpage = Firstpage.new
  end

  # GET /firstpages/1/edit
  def edit
  end

  # POST /firstpages
  # POST /firstpages.json
  def create
    @firstpage = Firstpage.new(firstpage_params)

    respond_to do |format|
      if @firstpage.save
        format.html { redirect_to @firstpage, notice: 'Firstpage was successfully created.' }
        format.json { render :show, status: :created, location: @firstpage }
      else
        format.html { render :new }
        format.json { render json: @firstpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firstpages/1
  # PATCH/PUT /firstpages/1.json
  def update
    respond_to do |format|
      if @firstpage.update(firstpage_params)
        format.html { redirect_to @firstpage, notice: 'Firstpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @firstpage }
      else
        format.html { render :edit }
        format.json { render json: @firstpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firstpages/1
  # DELETE /firstpages/1.json
  def destroy
    @firstpage.destroy
    respond_to do |format|
      format.html { redirect_to firstpages_url, notice: 'Firstpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firstpage
      @firstpage = Firstpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firstpage_params
      params.fetch(:firstpage, {})
    end
end
