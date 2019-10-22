json.extract! actualite, :id, :titre, :contenu, :image, :category_id, :administrateur_id, :created_at, :updated_at
json.url actualite_url(actualite, format: :json)
