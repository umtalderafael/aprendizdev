class CareersController < ApplicationController

  skip_before_action :authorized, only: [:index, :new, :create, :show, :edit, :update]
  
  before_action :set_career, only: [:show, :edit, :update, :destroy]

  def index
    @careers = Career.all
  end

  def show
  end

  def new
    @career = Career.new
  end

  def edit
  end

  def create
    @career = Career.new(career_params)

    respond_to do |format|
      if @career.save
        format.html { redirect_to @career, notice: 'Carreira criada com sucesso.' }
        format.json { render :show, status: :created, location: @career }
      else
        format.html { render :new }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @career.update(career_params)
        format.html { redirect_to @career, notice: 'Carreira atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @career }
      else
        format.html { render :edit }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @career.destroy
    respond_to do |format|
      format.html { redirect_to careers_url, notice: 'Carreira removida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    def set_career
      @career = Career.find(params[:id])
    end

    def career_params
      params.require(:career).permit(:nome)
    end
end
