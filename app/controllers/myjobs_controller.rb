class MyjobsController < ApplicationController
  before_action :set_myjob, only: [:show, :edit, :update, :destroy]

  # GET /myjobs
  # GET /myjobs.json
  def index
     @myjobs = Myjob.where("company like (?) OR  experince =?  Location like (?) OR technology like (?)","#{params[:search_com]}","#{params[:search_exp]}","%#{params[:search_location]}%","%#{params[:search_tec]}%")
     conditions = []
    if params[:search_com].present?
      conditions[0] = "company like (?)"
      conditions << "#{params[:search_com]}"
    end
    if params[:search_exp].present?
      if conditions[0].present?
        conditions[0] += " OR company like (?)"
      else
        conditions[0] += "company like (?)"
      end
      conditions <<  "#{params[:search_com]}"
    end

     @myjobs = Myjob.where(conditions)
    # binding.pry
  end

  # GET /myjobs/1
  # GET /myjobs/1.json
  def show
  end

  # GET /myjobs/new
  def new
    @myjob = Myjob.new
  end

  # GET /myjobs/1/edit
  def edit
  end

  # POST /myjobs
  # POST /myjobs.json
  def create
    @myjob = Myjob.new(myjob_params)

    respond_to do |format|
      if @myjob.save
        format.html { redirect_to @myjob, notice: 'Myjob was successfully created.' }
        format.json { render :show, status: :created, location: @myjob }
      else
        format.html { render :new }
        format.json { render json: @myjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myjobs/1
  # PATCH/PUT /myjobs/1.json
  def update
    respond_to do |format|
      if @myjob.update(myjob_params)
        format.html { redirect_to @myjob, notice: 'Myjob was successfully updated.' }
        format.json { render :show, status: :ok, location: @myjob }
      else
        format.html { render :edit }
        format.json { render json: @myjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myjobs/1
  # DELETE /myjobs/1.json
  def destroy
    @myjob.destroy
    respond_to do |format|
      format.html { redirect_to myjobs_url, notice: 'Myjob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myjob
      @myjob = Myjob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myjob_params
      params.require(:myjob).permit(:company, :technology, :experince, :pakage, :Location)
    end
end
