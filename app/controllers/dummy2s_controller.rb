class Dummy2sController < ApplicationController
  before_action :set_dummy2, only: [:show, :edit, :update, :destroy]

  # GET /dummy2s
  # GET /dummy2s.json
  def index
    @dummy2s = Dummy2.all
  end

  # GET /dummy2s/1
  # GET /dummy2s/1.json
  def show
  end

  # GET /dummy2s/new
  def new
    @dummy2 = Dummy2.new
  end

  # GET /dummy2s/1/edit
  def edit
  end

  # POST /dummy2s
  # POST /dummy2s.json
  def create
    @dummy2 = Dummy2.new(dummy2_params)

    respond_to do |format|
      if @dummy2.save
        format.html { redirect_to @dummy2, notice: 'Dummy2 was successfully created.' }
        format.json { render :show, status: :created, location: @dummy2 }
      else
        format.html { render :new }
        format.json { render json: @dummy2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dummy2s/1
  # PATCH/PUT /dummy2s/1.json
  def update
    respond_to do |format|
      if @dummy2.update(dummy2_params)
        format.html { redirect_to @dummy2, notice: 'Dummy2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @dummy2 }
      else
        format.html { render :edit }
        format.json { render json: @dummy2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummy2s/1
  # DELETE /dummy2s/1.json
  def destroy
    @dummy2.destroy
    respond_to do |format|
      format.html { redirect_to dummy2s_url, notice: 'Dummy2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dummy2
      @dummy2 = Dummy2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dummy2_params
      params.fetch(:dummy2, {})
    end
end
