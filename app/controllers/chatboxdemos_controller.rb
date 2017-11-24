class ChatboxdemosController < ApplicationController
  before_action :set_chatboxdemo, only: [:show, :edit, :update, :destroy]

  # GET /chatboxdemos
  # GET /chatboxdemos.json
  def index
    @chatboxdemos = Chatboxdemo.all
  end

  # GET /chatboxdemos/1
  # GET /chatboxdemos/1.json
  def show
  end

  # GET /chatboxdemos/new
  def new
    @chatboxdemo = Chatboxdemo.new
  end

  # GET /chatboxdemos/1/edit
  def edit
  end

  # POST /chatboxdemos
  # POST /chatboxdemos.json
  def create
    @chatboxdemo = Chatboxdemo.new(chatboxdemo_params)

    respond_to do |format|
      if @chatboxdemo.save
        format.html { redirect_to @chatboxdemo, notice: 'Chatboxdemo was successfully created.' }
        format.json { render :show, status: :created, location: @chatboxdemo }
      else
        format.html { render :new }
        format.json { render json: @chatboxdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chatboxdemos/1
  # PATCH/PUT /chatboxdemos/1.json
  def update
    respond_to do |format|
      if @chatboxdemo.update(chatboxdemo_params)
        format.html { redirect_to @chatboxdemo, notice: 'Chatboxdemo was successfully updated.' }
        format.json { render :show, status: :ok, location: @chatboxdemo }
      else
        format.html { render :edit }
        format.json { render json: @chatboxdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatboxdemos/1
  # DELETE /chatboxdemos/1.json
  def destroy
    @chatboxdemo.destroy
    respond_to do |format|
      format.html { redirect_to chatboxdemos_url, notice: 'Chatboxdemo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatboxdemo
      @chatboxdemo = Chatboxdemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chatboxdemo_params
      params.fetch(:chatboxdemo, {})
    end
end
