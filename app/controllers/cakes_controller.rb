class CakesController < ApplicationController
  before_action :set_cake, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @cakes = Cake.all
  end

  # GET /cakes/1
  
  def show
  end

  # GET /cakes/new
  def new
    @cake = Cake.new
  end

  # GET /cakes/1/edit
  def edit
  end

  # POST /cakes
  
  def create
    @cake = current_user.cakes.new(cake_params)
    if @cake.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  # PATCH/PUT /cakes/1
  
  def update
    if @cake.update(cake_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  # DELETE /cakes/1
  # DELETE /cakes/1.json
  def destroy
    @cake.destroy
    redirect_to cakes_url, notice: 'recipe was successfully destroyed.'
  end

  private
    
    def set_cake
      @cake = Cake.find(params[:id])
    end

    def cake_params
      params.require(:cake).permit(:name, :cake_type, :description, :picture)
    end
end
