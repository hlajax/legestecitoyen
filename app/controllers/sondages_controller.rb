class SondagesController < ApplicationController
  before_action :set_sondage, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_administrateur!,except:[:index, :show, :upvote, :downvote]
  before_action :authenticate_citoyen!,except:[:index, :show]
  # GET /sondages
  # GET /sondages.json
  def index
    @sondages = Sondage.all
  end

  # GET /sondages/1
  # GET /sondages/1.json
  def show
  end

def upvote
  @sondage = Sondage.friendly.find(params[:id])
  @sondage.liked_by current_citoyen
  flash[:success] = "Merci pour votre vote !"
  redirect_to @sondage
end

def downvote
  @sondage = Sondage.friendly.find(params[:id])
  @sondage.downvote_from current_citoyen
  flash[:success] = "Merci pour votre vote !"
  redirect_to @sondage
end
  # GET /sondages/new
  def new
    @sondage = current_administrateur.sondages.build
  end

  # GET /sondages/1/edit
  def edit
  end

  # POST /sondages
  # POST /sondages.json
  def create
    @sondage = current_administrateur.sondages.build(sondage_params)

    respond_to do |format|
      if @sondage.save
        format.html { redirect_to @sondage, notice: 'Sondage was successfully created.' }
        format.json { render :show, status: :created, location: @sondage }
      else
        format.html { render :new }
        format.json { render json: @sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sondages/1
  # PATCH/PUT /sondages/1.json
  def update
    respond_to do |format|
      if @sondage.update(sondage_params)
        format.html { redirect_to @sondage, notice: 'Sondage was successfully updated.' }
        format.json { render :show, status: :ok, location: @sondage }
      else
        format.html { render :edit }
        format.json { render json: @sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sondages/1
  # DELETE /sondages/1.json
  def destroy
    @sondage.destroy
    respond_to do |format|
      format.html { redirect_to sondages_url, notice: 'Sondage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sondage
      @sondage = Sondage.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sondage_params
      params.require(:sondage).permit(:titre, :description,  :image, :pour, :contre, :administrateur_id)
    end
end
