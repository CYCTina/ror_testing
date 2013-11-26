class PetsController < ApplicationController
  def index
  	@pets = Pet.all
  end

  def new
  	@pet = Pet.new
  end

  def create
  	@pet = Pet.new(pet_params)

  	if @pet.save
  		redirect_to pets_url
  	else
  		render 'new'
  	end
  end
end

def edit
  @pet = Pet.find(params[:id])
  raise @pet.inspect
end

def update
  @pet = Pet.find(params[:id])

  if @pet.update(pet_params)
    redirect_to pets_url
  else
    render 'new'
  end
end

private

def pet_params
	params.require(:pet).permit(:name, :color, :age, :owner, :terms)
end
