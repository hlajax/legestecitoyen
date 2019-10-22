class AccueilController < ApplicationController
	#before_action :authenticate_administrateur!
  def index
	  @actualites = Actualite.all.order("created_at DESC")
	  @actus = Actualite.all.limit(1).offset(1).order("created_at DESC")
	  @sondages = Sondage.all.limit(1).order("created_at DESC")
	  @sonds = Sondage.all.limit(5).order("created_at DESC")
	  @petitions = Petition.all.limit(1).order("created_at DESC")
	  @pets = Petition.all.limit(4).order("created_at DESC")
	  @corruptions = Corruption.all.limit(1).order("created_at DESC")
  end
end
