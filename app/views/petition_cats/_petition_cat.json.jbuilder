json.extract! petition_cat, :id, :titre, :description, :slug, :created_at, :updated_at
json.url petition_cat_url(petition_cat, format: :json)
