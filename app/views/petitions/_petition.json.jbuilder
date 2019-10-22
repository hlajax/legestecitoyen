json.extract! petition, :id, :titre, :contenu, :image, :petition_cat_id, :citoyen_id, :created_at, :updated_at
json.url petition_url(petition, format: :json)
