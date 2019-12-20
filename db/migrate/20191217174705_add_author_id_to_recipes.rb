class AddAuthorIdToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :author_id, :integer
  end
end
