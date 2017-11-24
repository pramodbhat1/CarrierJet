class NewloginpagesController < ApplicationController
  before_action :set_newloginpage, only: [:show, :edit, :update, :destroy]

  # GET /newloginpages
  # GET /newloginpages.json
  def index
    @newloginpages = Newloginpage.all
  end

  # GET /newloginpages/1
  # GET /newloginpages/1.json
  def show
  end

  # GET /newloginpages/new
  def new
    @newloginpage = Newloginpage.new
  end

  # GET /newloginpages/1/edit
  def edit
  end

  # POST /newloginpages
  # POST /newloginpages.json
  def create
    @newloginpage = Newloginpage.new(newloginpage_params)

    respond_to do |format|
      if @newloginpage.save
        format.html { redirect_to @newloginpage, notice: 'Newloginpage was successfully created.' }
        format.json { render :show, status: :created, location: @newloginpage }
      else
        format.html { render :new }
        format.json { render json: @newloginpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newloginpages/1
  # PATCH/PUT /newloginpages/1.json
  def update
    respond_to do |format|
      if @newloginpage.update(newloginpage_params)
        format.html { redirect_to @newloginpage, notice: 'Newloginpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @newloginpage }
      else
        format.html { render :edit }
        format.json { render json: @newloginpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newloginpages/1
  # DELETE /newloginpages/1.json
  def destroy
    @newloginpage.destroy
    respond_to do |format|
      format.html { redirect_to newloginpages_url, notice: 'Newloginpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newloginpage
      @newloginpage = Newloginpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newloginpage_params
      params.fetch(:newloginpage, {})
    end
end
