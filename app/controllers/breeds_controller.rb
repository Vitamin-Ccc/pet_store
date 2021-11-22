class BreedsController < ApplicationController
  before_action :set_pet
  before_action :set_breed, only: [:show, :update, :destroy, :edit]

  def index
    render component: "breeds", props: { pet: @pet, breeds: @pet.breeds }
  end

  def show
    render component: "breed", props: { breed: @breed }
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
    render component: "breedEdit", props: { pet: @pet, breed: @breed}
  end

  def update
    if (@breed.update(breed_params))
      redirect_to [@pet, @breed]
    else

    end
  end

  def destroy
    @breed.destroy
    redirect_to pet_breeds_path(@pet)
  end

  private

  def breed_params
    params.require(:breed).permit(:name, :description)
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def set_breed
    @breed = @pet.breeds.find(params[:id])
  end

end
