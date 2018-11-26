class TortaController < ApplicationController
  before_action :set_tortum, only: [:show, :edit, :update, :destroy]

  # GET /torta
  # GET /torta.json
  def index
    @torta = Tortum.all
  end

  # GET /torta/1
  # GET /torta/1.json
  def show
  end

  # GET /torta/new
  def new
    @tortum = Tortum.new
  end

  # GET /torta/1/edit
  def edit
  end

  # POST /torta
  # POST /torta.json
  def create
    @tortum = Tortum.new(tortum_params)

    respond_to do |format|
      if @tortum.save
        format.html { redirect_to @tortum, notice: 'Tortum was successfully created.' }
        format.json { render :show, status: :created, location: @tortum }
      else
        format.html { render :new }
        format.json { render json: @tortum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /torta/1
  # PATCH/PUT /torta/1.json
  def update
    respond_to do |format|
      if @tortum.update(tortum_params)
        format.html { redirect_to @tortum, notice: 'Tortum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tortum }
      else
        format.html { render :edit }
        format.json { render json: @tortum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /torta/1
  # DELETE /torta/1.json
  def destroy
    @tortum.destroy
    respond_to do |format|
      format.html { redirect_to torta_url, notice: 'Tortum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tortum
      @tortum = Tortum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tortum_params
      params.require(:tortum).permit(:sabor, :porciones, :precio, :tipo)
    end
end
