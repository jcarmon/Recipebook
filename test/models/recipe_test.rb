require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def setup
    @recipe = recipes(:one)
  end
  
  test 'valid recipe' do
    assert @recipe.valid?
  end

  test 'invalid without title' do 
    @recipe.title = " "
    assert @recipe.invalid?
  end
  
  test 'invalid without difficulty' do 
    @recipe.difficulty = " "
    assert @recipe.invalid?
  end
  
  test 'invalid without comment' do
    @recipe.comment = " "
    assert @recipe.invalid? 
  end
end  
