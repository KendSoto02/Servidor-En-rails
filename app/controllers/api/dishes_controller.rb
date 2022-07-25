module Api
class DishesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_dish, only: %i[ show edit update destroy ]

  def index
    @dishes = Dish.all
  end

  def show 
  end

  def new
    @dish = Dish.new
  end

  def edit
  end

  def create
    @dish = Dish.new(dish_params)
      if @dish.save
        render 'api/dishes/show', status: :created
      else
        render json: @dish.errors.full_messages, status: :unprocessable_entity 
      end
  end

  def update
      if @dish.update(dish_params)
        render 'api/dishes/show', status: :created
      else
        render json: @dish.errors.full_messages, status: :unprocessable_entity
      end
  end

  def destroy
    @dish.destroy
    render 'api/dishes/show', status: :created
  end

  private
    def set_dish
      @dish = Dish.find(params[:id])
    end

    def dish_params
      params.require(:dish).permit(:name, :description, :price, :picture)
    end
end
end