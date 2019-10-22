class PetitionCatsController < ApplicationController
  before_action :set_petition_cat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_administrateur!
  # GET /petition_cats
  # GET /petition_cats.json
  def index
    @petition_cats = PetitionCat.all
  end

  # GET /petition_cats/1
  # GET /petition_cats/1.json
  def show
  end

  # GET /petition_cats/new
  def new
    @petition_cat = current_administrateur.petition_cats.build
  end

  # GET /petition_cats/1/edit
  def edit
  end

  # POST /petition_cats
  # POST /petition_cats.json
  def create
    @petition_cat = current_administrateur.petition_cats.build(petition_cat_params)

    respond_to do |format|
      if @petition_cat.save
        format.html { redirect_to @petition_cat, notice: 'Petition cat was successfully created.' }
        format.json { render :show, status: :created, location: @petition_cat }
      else
        format.html { render :new }
        format.json { render json: @petition_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petition_cats/1
  # PATCH/PUT /petition_cats/1.json
  def update
    respond_to do |format|
      if @petition_cat.update(petition_cat_params)
        format.html { redirect_to @petition_cat, notice: 'Petition cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @petition_cat }
      else
        format.html { render :edit }
        format.json { render json: @petition_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petition_cats/1
  # DELETE /petition_cats/1.json
  def destroy
    @petition_cat.destroy
    respond_to do |format|
      format.html { redirect_to petition_cats_url, notice: 'Petition cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petition_cat
      @petition_cat = PetitionCat.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petition_cat_params
      params.require(:petition_cat).permit(:titre, :description, :administrateur_id)
    end
end
