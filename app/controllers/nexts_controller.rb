class NextsController < ApplicationController
  before_action :set_next, only: [:show, :edit, :update, :destroy]

  # GET /nexts
  # GET /nexts.json
  def index
    @nexts = Next.all
  end

  # GET /nexts/1
  # GET /nexts/1.json
  def show
  end

  # GET /nexts/new
  def new
    @next = Next.new
  end

  # GET /nexts/1/edit
  def edit
  end

  # POST /nexts
  # POST /nexts.json
  def create
    @next = Next.new(next_params)

    respond_to do |format|
      if @next.save
        format.html { redirect_to @next, notice: 'Next was successfully created.' }
        format.json { render :show, status: :created, location: @next }
      else
        format.html { render :new }
        format.json { render json: @next.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nexts/1
  # PATCH/PUT /nexts/1.json
  def update
    respond_to do |format|
      if @next.update(next_params)
        format.html { redirect_to @next, notice: 'Next was successfully updated.' }
        format.json { render :show, status: :ok, location: @next }
      else
        format.html { render :edit }
        format.json { render json: @next.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nexts/1
  # DELETE /nexts/1.json
  def destroy
    @next.destroy
    respond_to do |format|
      format.html { redirect_to nexts_url, notice: 'Next was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_next
      @next = Next.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def next_params
      params.require(:next).permit(:connection)
    end
end
