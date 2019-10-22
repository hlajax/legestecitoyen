class CorruptionsController < ApplicationController
  before_action :set_corruption, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_citoyen!, except:[:index, :show]
  # GET /corruptions
  # GET /corruptions.json
  def index
    @corruptions = Corruption.all
  end

  # GET /corruptions/1
  # GET /corruptions/1.json
  def show
  end

  # GET /corruptions/new
  def new
    @corruption = current_citoyen.corruptions.build
  end

  # GET /corruptions/1/edit
  def edit
  end

  # POST /corruptions
  # POST /corruptions.json
  def create
    @corruption = current_citoyen.corruptions.build(corruption_params)

    respond_to do |format|
      if @corruption.save
        format.html { redirect_to @corruption, notice: 'Corruption was successfully created.' }
        format.json { render :show, status: :created, location: @corruption }
      else
        format.html { render :new }
        format.json { render json: @corruption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corruptions/1
  # PATCH/PUT /corruptions/1.json
  def update
    respond_to do |format|
      if @corruption.update(corruption_params)
        format.html { redirect_to @corruption, notice: 'Corruption was successfully updated.' }
        format.json { render :show, status: :ok, location: @corruption }
      else
        format.html { render :edit }
        format.json { render json: @corruption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corruptions/1
  # DELETE /corruptions/1.json
  def destroy
    @corruption.destroy
    respond_to do |format|
      format.html { redirect_to corruptions_url, notice: 'Corruption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corruption
      @corruption = Corruption.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corruption_params
      params.require(:corruption).permit(:titre, :description, :image, :ville, :date,  :corruption_cat_id, :citoyen_id)
    end
end
