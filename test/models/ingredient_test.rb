require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  def setup
    @ingredient = ingredients(:one)
  end
  
  test 'valid ingredient' do
    assert @ingredient.valid?
  end

  test 'invalid without name' do 
    @ingredient.name = " "
    assert @ingredient.invalid?
  end
  
  test 'invalid without amount' do 
    @ingredient.amount = " "
    assert @ingredient.invalid?
  end
  
  test 'invalid without units' do
    @ingredient.units = " "
    assert @ingredient.invalid? 
  end
end  

