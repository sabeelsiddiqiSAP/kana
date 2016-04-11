class CreateMealsController < ApplicationController
  before_action :set_create_meal, only: [:show, :edit, :update, :destroy]

  # GET /create_meals
  # GET /create_meals.json
  def index
    @create_meals = CreateMeal.all
  end

  # GET /create_meals/1
  # GET /create_meals/1.json
  def show
  end

  # GET /create_meals/new
  def new
    @create_meal = CreateMeal.new
  end

  # GET /create_meals/1/edit
  def edit
  end

  # POST /create_meals
  # POST /create_meals.json
  def create
    @create_meal = CreateMeal.new(create_meal_params)

    respond_to do |format|
      if @create_meal.save
        format.html { redirect_to @create_meal, notice: 'Create meal was successfully created.' }
        format.json { render :show, status: :created, location: @create_meal }
      else
        format.html { render :new }
        format.json { render json: @create_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_meals/1
  # PATCH/PUT /create_meals/1.json
  def update
    respond_to do |format|
      if @create_meal.update(create_meal_params)
        format.html { redirect_to @create_meal, notice: 'Create meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_meal }
      else
        format.html { render :edit }
        format.json { render json: @create_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_meals/1
  # DELETE /create_meals/1.json
  def destroy
    @create_meal.destroy
    respond_to do |format|
      format.html { redirect_to create_meals_url, notice: 'Create meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_meal
      @create_meal = CreateMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_meal_params
      params.require(:create_meal).permit(:name, :description, :avatar)
    end
end
