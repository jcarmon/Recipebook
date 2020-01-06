require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  def setup
    @author = authors(:one)
  end

  test 'valid author' do
    assert @author.valid?
  end

  test 'invalid without first name' do 
    @author.first_name = nil
    refute @author.valid?, 'author valid without first name'
    assert_not_nil @author.errors[:first_name], 'no validation for first name'
  end
  
  test 'invalid without last name' do 
    @author.last_name = nil
    refute @author.valid?, 'author valid without last name'
    assert_not_nil @author.errors[:last_name], 'no validation for last name'
  end
  
  test 'invalid without email' do
    @author.email = nil
    refute @author.valid?, 'author valid without email'
    assert_not_nil @author.errors[:email],'no validation for email'
  end
end
