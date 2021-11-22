class BreedsController < ApplicationController
  before_action :set_pet
  before_action :set_breed, only: [:show, :update, :destroy, :edit]

  def index
    render component: "Breeds", props: { pet: @pet, breeds: @pet.breeds }
  end

  def show
    render component: "Breed", props: { breed: @breed }
  end

  def new
    render component: "breedNew", props: { pet: @pet }
  end

  def create
    @breed = @pet.breeds.new(breed_params)
    if (@breed.save)
      redirect_to [@pet, @breed]
    else
      
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
