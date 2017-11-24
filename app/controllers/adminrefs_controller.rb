class AdminrefsController < ApplicationController
  before_action :set_adminref, only: [:show, :edit, :update, :destroy]

  # GET /adminrefs
  # GET /adminrefs.json
  def index
    @adminrefs = Adminref.all
  end

  # GET /adminrefs/1
  # GET /adminrefs/1.json
  def show
  end

  # GET /adminrefs/new
  def new
    @adminref = Adminref.new
  end

  # GET /adminrefs/1/edit
  def edit
  end

  # POST /adminrefs
  # POST /adminrefs.json
  def create
    @adminref = Adminref.new(adminref_params)

    respond_to do |format|
      if @adminref.save
        format.html { redirect_to @adminref, notice: 'Adminref was successfully created.' }
        format.json { render :show, status: :created, location: @adminref }
      else
        format.html { render :new }
        format.json { render json: @adminref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminrefs/1
  # PATCH/PUT /adminrefs/1.json
  def update
    respond_to do |format|
      if @adminref.update(adminref_params)
        format.html { redirect_to @adminref, notice: 'Adminref was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminref }
      else
        format.html { render :edit }
        format.json { render json: @adminref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminrefs/1
  # DELETE /adminrefs/1.json
  def destroy
    @adminref.destroy
    respond_to do |format|
      format.html { redirect_to adminrefs_url, notice: 'Adminref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminref
      @adminref = Adminref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminref_params
      params.require(:adminref).permit(:name, :company, :referealid, :Location, :Experince_in_year, :technology)
    end
end
