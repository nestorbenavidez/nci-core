class CalculationTypesController < ApplicationController
  before_action :set_calculation_type, only: [:show, :edit, :update, :destroy]

  # GET /calculation_types
  # GET /calculation_types.json
  def index
    @calculation_types = CalculationType.all
  end

  # GET /calculation_types/1
  # GET /calculation_types/1.json
  def show
  end

  # GET /calculation_types/new
  def new
    @calculation_type = CalculationType.new
  end

  # GET /calculation_types/1/edit
  def edit
  end

  # POST /calculation_types
  # POST /calculation_types.json
  def create
    @calculation_type = CalculationType.new(calculation_type_params)

    respond_to do |format|
      if @calculation_type.save
        format.html { redirect_to @calculation_type, notice: 'Calculation type was successfully created.' }
        format.json { render :show, status: :created, location: @calculation_type }
      else
        format.html { render :new }
        format.json { render json: @calculation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculation_types/1
  # PATCH/PUT /calculation_types/1.json
  def update
    respond_to do |format|
      if @calculation_type.update(calculation_type_params)
        format.html { redirect_to @calculation_type, notice: 'Calculation type was successfully updated.' }
        format.json { render :show, status: :ok, location: @calculation_type }
      else
        format.html { render :edit }
        format.json { render json: @calculation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculation_types/1
  # DELETE /calculation_types/1.json
  def destroy
    @calculation_type.destroy
    respond_to do |format|
      format.html { redirect_to calculation_types_url, notice: 'Calculation type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculation_type
      @calculation_type = CalculationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calculation_type_params
      params.require(:calculation_type).permit(:name, :field_type_id)
    end
end
