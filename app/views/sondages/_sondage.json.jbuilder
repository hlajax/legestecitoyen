json.extract! sondage, :id, :titre, :description, :slug, :image, :administrateur_id, :created_at, :updated_at
json.url sondage_url(sondage, format: :json)
