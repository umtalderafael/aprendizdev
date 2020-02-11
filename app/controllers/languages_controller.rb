class LanguagesController < ApplicationController

  skip_before_action :authorized, only: [:index, :new, :create, :show, :edit, :destroy, :update]
  before_action :set_language, only: [:show, :edit, :update, :destroy]

  def index
    @languages = Language.all
  end

  def show
  end

  def new
    @language = Language.new
    @careers = Career.all
  end

  def edit
  end

  def create
    @language = Language.new(language_params)

    respond_to do |format|
      if @language.save
        format.html { redirect_to "/languages", notice: 'Linguagem criada com sucesso.' }
        format.json { render :show, status: :created, location: @language }
      else
        format.html { render :new }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @language.update(language_params)
        format.html { redirect_to @language, notice: 'Linguagem atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @language }
      else
        format.html { render :edit }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @language.destroy
    respond_to do |format|
      format.html { redirect_to languages_url, notice: 'Linguagem removida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    def set_language
      @language = Language.find(params[:id])
    end

    def language_params
      params.require(:language).permit(:nome, :career_id)
    end
end
