class DogsController < ApplicationController
    before_action :get_dog, only: [:show, :edit, :update, :delete]

  def index
    @dogs = Dog.all
  end

  def show

  end

  # def new
  #   @dog = Dog.new
  #   @employees = Employee.all
  #
  #
  # end
  #
  # def create
  #
  #
  # end
  #
  # def edit
  #
  # end
  #
  # def update
  #
  # end
  #
  # def delete
  #
  # end


  
  private
  def get_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, employees: [])
  end
end
