class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.belongs_to :author
      t.string :difficulty
      t.string :ingredients
      t.text :comment

      t.timestamps
    end
  end
end
