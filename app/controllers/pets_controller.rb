class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  # Read
  def index
    @pets = Pet.all
    render component: "pets", props: { pets:@pets }
  end

  def show
    @pet = Pet.find(params[:id])
    render component: "pet", props: { pet: @pet }
  end

  # Create
  def new
    render component: "petNew"
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_path
    else
      render component: "petNew", props: { pet: @pet }
    end
  end

  # Update
  def edit
    @pet = Pet.find(params[:id])
    render component: "petEdit", props: { pet: @pet }
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to root_path
    else
      render component: "petEdit", props: { pet: @pet }
    end
  end

  # Delete/Destroy
  def destroy
    pet = Pet.find(params[:id])
    pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end
