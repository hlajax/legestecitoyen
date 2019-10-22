class CorruptionCatsController < ApplicationController
  before_action :set_corruption_cat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_administrateur!
  # GET /corruption_cats
  # GET /corruption_cats.json
  def index
    @corruption_cats = CorruptionCat.all
  end

  # GET /corruption_cats/1
  # GET /corruption_cats/1.json
  def show
  end

  # GET /corruption_cats/new
  def new
    @corruption_cat = current_administrateur.corruption_cats.build
  end

  # GET /corruption_cats/1/edit
  def edit
  end

  # POST /corruption_cats
  # POST /corruption_cats.json
  def create
    @corruption_cat = current_administrateur.corruption_cats.build(corruption_cat_params)

    respond_to do |format|
      if @corruption_cat.save
        format.html { redirect_to @corruption_cat, notice: 'Corruption cat was successfully created.' }
        format.json { render :show, status: :created, location: @corruption_cat }
      else
        format.html { render :new }
        format.json { render json: @corruption_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corruption_cats/1
  # PATCH/PUT /corruption_cats/1.json
  def update
    respond_to do |format|
      if @corruption_cat.update(corruption_cat_params)
        format.html { redirect_to @corruption_cat, notice: 'Corruption cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @corruption_cat }
      else
        format.html { render :edit }
        format.json { render json: @corruption_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corruption_cats/1
  # DELETE /corruption_cats/1.json
  def destroy
    @corruption_cat.destroy
    respond_to do |format|
      format.html { redirect_to corruption_cats_url, notice: 'Corruption cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corruption_cat
      @corruption_cat = CorruptionCat.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corruption_cat_params
      params.require(:corruption_cat).permit(:titre, :description,  :administrateur_id)
    end
end
