class LatestnewsController < ApplicationController
  before_action :set_latestnews, only: [:show, :edit, :update, :destroy]

  # GET /latestnews
  # GET /latestnews.json
  def index
    @latestnews = Latestnews.all
  end

  # GET /latestnews/1
  # GET /latestnews/1.json
  def show
  end

  # GET /latestnews/new
  def new
    @latestnews = Latestnews.new
  end

  # GET /latestnews/1/edit
  def edit
  end

  # POST /latestnews
  # POST /latestnews.json
  def create
    @latestnews = Latestnews.new(latestnews_params)

    respond_to do |format|
      if @latestnews.save
        format.html { redirect_to @latestnews, notice: 'Latestnews was successfully created.' }
        format.json { render :show, status: :created, location: @latestnews }
      else
        format.html { render :new }
        format.json { render json: @latestnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latestnews/1
  # PATCH/PUT /latestnews/1.json
  def update
    respond_to do |format|
      if @latestnews.update(latestnews_params)
        format.html { redirect_to @latestnews, notice: 'Latestnews was successfully updated.' }
        format.json { render :show, status: :ok, location: @latestnews }
      else
        format.html { render :edit }
        format.json { render json: @latestnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latestnews/1
  # DELETE /latestnews/1.json
  def destroy
    @latestnews.destroy
    respond_to do |format|
      format.html { redirect_to latestnews_index_url, notice: 'Latestnews was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latestnews
      @latestnews = Latestnews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def latestnews_params
      params.require(:latestnews).permit(:title, :description, :image)
    end
end
