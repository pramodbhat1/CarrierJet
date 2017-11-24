class FindjobsController < ApplicationController
  before_action :set_findjob, only: [:show, :edit, :update, :destroy]

  # GET /findjobs
  # GET /findjobs.json
  def index
    @findjobs = Findjob.all
  end

  # GET /findjobs/1
  # GET /findjobs/1.json
  def show
  end

  # GET /findjobs/new
  def new
    @findjob = Findjob.new
    @jobs = Job.pluck(:tec, :id)
  end

  # GET /findjobs/1/edit
  def edit
    @jobs = Job.pluck(:tec, :id)
  end


  def search_jobs
    jobs = Job.pluck(:tec)
    @arr = []
    jobs.uniq.each_with_index do |tec, index|
      @arr << [tec, tec]
    end
  end

  def get_jobs
    @jobs = Job.where("tec like ?", "%#{params[:jobs]}%")
     # binding.pry
  end

  # POST /findjobs
  # POST /findjobs.json
  def create
    @findjob = Findjob.new(findjob_params)

    respond_to do |format|
      if @findjob.save
        format.html { redirect_to @findjob, notice: 'Findjob was successfully created.' }
        format.json { render :show, status: :created, location: @findjob }
      else
        format.html { render :new }
        format.json { render json: @findjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /findjobs/1
  # PATCH/PUT /findjobs/1.json
  def update
    respond_to do |format|
      if @findjob.update(findjob_params)
        format.html { redirect_to @findjob, notice: 'Findjob was successfully updated.' }
        format.json { render :show, status: :ok, location: @findjob }
      else
        format.html { render :edit }
        format.json { render json: @findjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /findjobs/1
  # DELETE /findjobs/1.json
  def destroy
    @findjob.destroy
    respond_to do |format|
      format.html { redirect_to findjobs_url, notice: 'Findjob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_findjob
      @findjob = Findjob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def findjob_params
      params.require(:findjob).permit(:tec, :exp)
    end
end
