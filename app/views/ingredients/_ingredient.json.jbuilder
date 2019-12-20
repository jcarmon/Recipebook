json.extract! ingredient, :id, :name, :amount, :units, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
