class TophundredsController < ApplicationController
  before_action :set_tophundred, only: [:show, :edit, :update, :destroy]

  # GET /tophundreds
  # GET /tophundreds.json
  def index
    @tophundreds = Tophundred.all
  end

  # GET /tophundreds/1
  # GET /tophundreds/1.json
  def show
  end

  # GET /tophundreds/new
  def new
    @tophundred = Tophundred.new
  end

  # GET /tophundreds/1/edit
  def edit
  end

  # POST /tophundreds
  # POST /tophundreds.json
  def create
    @tophundred = Tophundred.new(tophundred_params)

    respond_to do |format|
      if @tophundred.save
        format.html { redirect_to @tophundred, notice: 'Tophundred was successfully created.' }
        format.json { render :show, status: :created, location: @tophundred }
      else
        format.html { render :new }
        format.json { render json: @tophundred.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tophundreds/1
  # PATCH/PUT /tophundreds/1.json
  def update
    respond_to do |format|
      if @tophundred.update(tophundred_params)
        format.html { redirect_to @tophundred, notice: 'Tophundred was successfully updated.' }
        format.json { render :show, status: :ok, location: @tophundred }
      else
        format.html { render :edit }
        format.json { render json: @tophundred.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tophundreds/1
  # DELETE /tophundreds/1.json
  def destroy
    @tophundred.destroy
    respond_to do |format|
      format.html { redirect_to tophundreds_url, notice: 'Tophundred was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tophundred
      @tophundred = Tophundred.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tophundred_params
      params.require(:tophundred).permit(:genre, :songname, :artistname, :rank, :lyrics)
    end
end
