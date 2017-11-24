class SuggestionboxesController < ApplicationController
  before_action :set_suggestionbox, only: [:show, :edit, :update, :destroy]

  # GET /suggestionboxes
  # GET /suggestionboxes.json
  def index
    @suggestionboxes = Suggestionbox.where("langvage like (?)","#{params[:search]}")
  end

  # GET /suggestionboxes/1
  # GET /suggestionboxes/1.json
  def show
  end

  # GET /suggestionboxes/new
  def new
    @suggestionbox = Suggestionbox.new
  end

  # GET /suggestionboxes/1/edit
  def edit
  end

  # POST /suggestionboxes
  # POST /suggestionboxes.json
  def create
    @suggestionbox = Suggestionbox.new(suggestionbox_params)

    respond_to do |format|
      if @suggestionbox.save
        format.html { redirect_to @suggestionbox, notice: 'Suggestionbox was successfully created.' }
        format.json { render :show, status: :created, location: @suggestionbox }
      else
        format.html { render :new }
        format.json { render json: @suggestionbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggestionboxes/1
  # PATCH/PUT /suggestionboxes/1.json
  def update
    respond_to do |format|
      if @suggestionbox.update(suggestionbox_params)
        format.html { redirect_to @suggestionbox, notice: 'Suggestionbox was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggestionbox }
      else
        format.html { render :edit }
        format.json { render json: @suggestionbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggestionboxes/1
  # DELETE /suggestionboxes/1.json
  def destroy
    @suggestionbox.destroy
    respond_to do |format|
      format.html { redirect_to suggestionboxes_url, notice: 'Suggestionbox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggestionbox
      @suggestionbox = Suggestionbox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggestionbox_params
      params.require(:suggestionbox).permit(:langvage, :bestcombination)
    end
end
