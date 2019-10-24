class PetitionsController < ApplicationController
  before_action :set_petition, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_citoyen!, except:[:index, :show]
  # GET /petitions
  # GET /petitions.json
  def index
    @petitions = Petition.all
  end

  # GET /petitions/1
  # GET /petitions/1.json
  def show
  end
  def upvote
  @petition = Petition.friendly.find(params[:id])
  @petition.liked_by current_citoyen
  redirect_to @petition
end
  # GET /petitions/new
  def new
    @petition = current_citoyen.petitions.build
  end

  # GET /petitions/1/edit
  def edit
  end

  # POST /petitions
  # POST /petitions.json
  def create
    @petition = current_citoyen.petitions.build(petition_params)

    respond_to do |format|
      if @petition.save
        format.html { redirect_to @petition, notice: 'Petition was successfully created.' }
        format.json { render :show, status: :created, location: @petition }
      else
        format.html { render :new }
        format.json { render json: @petition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petitions/1
  # PATCH/PUT /petitions/1.json
  def update
    respond_to do |format|
      if @petition.update(petition_params)
        format.html { redirect_to @petition, notice: 'Petition was successfully updated.' }
        format.json { render :show, status: :ok, location: @petition }
      else
        format.html { render :edit }
        format.json { render json: @petition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petitions/1
  # DELETE /petitions/1.json
  def destroy
    @petition.destroy
    respond_to do |format|
      format.html { redirect_to petitions_url, notice: 'Petition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petition
      @petition = Petition.friendly.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petition_params
      params.require(:petition).permit(:titre, :contenu, :image, :petition_cat_id, :citoyen_id)
    end
end
