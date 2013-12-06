require 'test_helper'

class PetTest < ActiveSupport::TestCase
  def test_sanity
  	assert true
  end

  def test_valid
  	pet = Pet.new(name:'My name', color:'my color', age:'12', owner:'my owner', terms:true)
  	assert pet.valid?
  end

  def test_invalid
  	pet = Pet.new
  	pet.name = nil
  	refute pet.valid?
  end
end

