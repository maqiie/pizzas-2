class PizzasController < ApplicationController
    def index
      pizzas = Pizza.all
      render json: pizzas, except: [:created_at, :updated_at]
    end
  
    def create
      pizza = Pizza.create(allow_params)
      render json: pizza, except: [:created_at, :updated_at]
    end
  
    private
  
    def allow_params
      params.permit(:name, :ingredients)
    end
  end