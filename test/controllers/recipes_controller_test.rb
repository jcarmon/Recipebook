require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
    @author = authors(:one)
  end

  test "should get index" do
    get author_recipes_url(@recipe)
    assert_response :success
  end

  test "should get new" do
    get new_author_recipe_url(@recipe)
    assert_response :success
   end

   test "should create recipe" do
     assert_difference('Recipe.count') do
      post author_recipes_url(@author), params: { recipe: { title:@recipe.title, comment: @recipe.comment, difficulty: @recipe.difficulty, ingredients: @recipe.ingredients } }
    end
    
    assert_redirected_to author_recipe_url(@author, Recipe.last)
  end

  test "should show recipe" do
    get author_recipe_url(@recipe ,@author)
    assert_response :success
  end

  test "should get edit" do
    get edit_author_recipe_url(@recipe, @author)
    assert_response :success
  end

  test "should update recipe" do
    patch author_recipe_url(@recipe, @author), params: { recipe: { title:@recipe.title,author: @recipe.author, comment: @recipe.comment, difficulty: @recipe.difficulty, ingredients: @recipe.ingredients } }
    assert_redirected_to author_recipe_url(@recipe, @author)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete author_recipe_url(@author, @recipe)
    end

    assert_redirected_to author_recipes_url
  end
end
