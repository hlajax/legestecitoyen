class AccueilController < ApplicationController
	#before_action :authenticate_administrateur!
  def index
	  @actualites = Actualite.all.limit(2).offset(3).order("created_at DESC")
	  @actus = Actualite.all.limit(2).offset(1).order("created_at DESC")
	   @actune = Actualite.all.limit(1).order("created_at DESC")
	   @sportune = Actualite.where(category: [2]).limit(1).order("created_at DESC")
	  @politune = Actualite.where(category: [1]).limit(1).order("created_at DESC")
	  @politiques = Actualite.where(category: [1]).limit(2).offset(1).order("created_at DESC")
	  @sports = Actualite.where(category: [2]).limit(2).offset(1).order("created_at DESC")
	  @envune = Actualite.where(category: [3]).limit(1).order("created_at DESC")
	  @environnements = Actualite.where(category: [3]).limit(4).offset(1).order("created_at DESC")
	  @sondages = Sondage.all.limit(1).order("created_at DESC")
	  @sonds = Sondage.all.limit(5).order("created_at DESC")
	  @petitions = Petition.all.limit(1).order("created_at DESC")
	  @pets = Petition.all.limit(4).order("created_at DESC")
	  @corruptions = Corruption.all.limit(1).order("created_at DESC")
  end
end
