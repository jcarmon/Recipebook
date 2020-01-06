require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:one)
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipe_ingredients_url(@ingredient)
    assert_response :success
  end

  test "should get new" do
    get new_recipe_ingredient_url(@ingredient, @recipe)
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Ingredient.count') do
      post recipe_ingredients_url(@recipe), params: { ingredient: { amount: @ingredient.amount, name: 'flour', units: @ingredient.units, recipe_id: @ingredient.recipe_id } }
    end

    assert_redirected_to recipe_ingredients_url(@recipe)
  end

  test "should show ingredient" do
    get recipe_ingredient_url(@ingredient,@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_ingredient_url(@ingredient,@recipe)
    assert_response :success
  end

  test "should update ingredient" do
    patch recipe_ingredient_url(@recipe, @ingredient), params: { ingredient: { amount: @ingredient.amount, name: 'flour', units: @ingredient.units, recipe_id: @ingredient.recipe_id } }
    assert_redirected_to recipe_ingredients_url(@recipe)
  end 

  test "should destroy ingredient"  do
    assert_difference('Ingredient.count', -1) do
      delete recipe_ingredient_url(@ingredient,@recipe)
    end

    assert_redirected_to recipe_ingredients_url
  end
end
