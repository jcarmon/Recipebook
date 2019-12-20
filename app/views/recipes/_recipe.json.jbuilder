json.extract! recipe, :id, :title, :author, :difficulty, :ingredients, :comment, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
