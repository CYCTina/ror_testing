require 'test_helper'

class PetsControllerTest < ActionController::TestCase

  def test_index
    get :index
    assert_response 200
  end

  def test_new
    get :new
    assert_response 200
  end

  def test_show

    #method 1
    # pet = Pet.create name: "Fred", color: "Brown", age: 23, owner: "Tina", terms: true
    # get :show, id: pet.id

    #method 2
    #pull dummy data from test/fixtures/pets.yml
    get :show, id: pets(:cassie).id
    assert_response 200
  end

 def test_create
    params = { "pet"=>
      {"name"=>"Feddy",
      "color"=>"Red","age"=>"2",
      "owner"=>"Tina", "terms"=>"1"
      }
    }
    assert_difference("Pet.count") do
      post :create, params
    end
    assert_redirected_to pets_url
  end

  def test_create_fail
    params = { "pet"=>
      {"name"=>"",
      "color"=>"","age"=>"",
      "owner"=>"", "terms"=>""
      }
    }
    assert_no_difference("Pet.count") do
      post :create, params
    end
    assert_template "new"
  end

end
