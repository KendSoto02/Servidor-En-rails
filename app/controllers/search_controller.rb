class SearchController < ApplicationController
  def results
    @orders = Order.buscador(params[:termino])
  end
  def resultsDish
    @dishes = Dish.buscador(params[:termino])
  end
  def resultsOrder
    @orders = Order.buscador(params[:termino])
  end
end