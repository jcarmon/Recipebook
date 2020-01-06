class RecipesController < ApplicationController
  before_action :set_author
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = @author.recipes
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  #This method creates a post object that’s associated with 
  #the specific recipe instance from the get_recipe method.
  def new
    @recipe = @author.recipes.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = @author.recipes.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to author_recipe_path(@author,@recipe), notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to author_recipe_path(@author), notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
        
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to author_recipes_path(@author), notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_author
      @author = Author.find(params[:author_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = @author.recipes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:title, :difficulty, :ingredient_id, :comment)
    end
end
