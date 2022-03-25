class ClownsController < ApplicationController

  def index
    clowns = Clown.all
    render json: clowns
  end

  def show
    clown = Clown.find_by(id: params[:id])
    render json: clown
  end
  
  def create
    clown = Clown.new(
      name: params["name"]
    )
    clown.save
    render json: clown
  end
  
  def update
    clown = Clown.find_by(id: params[:id])
    clown.name = params["name"] || clown.name
    render json: clown
  end
  
  def destroy
    clown = Clown.find_by(id: params[:id])
    clown.delete
    render json: {message: "Clown FIRED"}
  end

end
