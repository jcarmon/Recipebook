require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:one)
  end

  test "should get index" do
    get recipe_ingredients_url(@ingredient)
    assert_response :success
  end

  test "should get new" do
    get new_recipe_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Ingredient.count') do
      post recipe_ingredients_url, params: { ingredient: { amount: @ingredient.amount, name: @ingredient.name, units: @ingredient.units } }
    end

    assert_redirected_to recipe_ingredients_url(Ingredient.last)
  end

  test "should show ingredient" do
    get recipe_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should update ingredient" do
    patch recipe_ingredients_url(@ingredient), params: { ingredient: { amount: @ingredient.amount, name: @ingredient.name, units: @ingredient.units } }
    assert_redirected_to ingredient_url(@ingredient)
  end

  test "should destroy ingredient" do
    assert_difference('Ingredient.count', -1) do
      delete recipe_ingredient_url(@author,@ingredient)
    end

    assert_redirected_to ingredients_url
  end
end
