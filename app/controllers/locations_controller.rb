# frozen_string_literal: true

class LocationsController < ApplicationController
  skip_before_action :authorized, only: %i[new create edit update]

  def new
    @location = Location.new
  end

  def create
    valores = location_params
    valores['user_id'] = session[:user_id]
    location = Location.create(valores)
    session[:location_id] = location.id
    redirect_to '/users/languages'
  end

  def edit
    @location = Location.find_by_id(session[:location_id])
    render :new
  end

  def update
    @location = set_location
    if @location.update location_params
      flash[:notice] = 'Endereço atualizado com sucesso!'
      redirect_to root_url
    else
      render :new
    end
  end

  def location_params
    params.require(:location).permit(:cep, :cidade, :estado)
  end

  def set_location
    Location.find(params[:id])
  end
end