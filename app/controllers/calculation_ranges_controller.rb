class CalculationRangesController < ApplicationController
  before_action :set_calculation_range, only: [:show, :edit, :update, :destroy]

  # GET /calculation_ranges
  # GET /calculation_ranges.json
  def index
    @calculation_ranges = CalculationRange.all
  end

  # GET /calculation_ranges/1
  # GET /calculation_ranges/1.json
  def show
  end

  # GET /calculation_ranges/new
  def new
    @calculation_range = CalculationRange.new
  end

  # GET /calculation_ranges/1/edit
  def edit
  end

  # POST /calculation_ranges
  # POST /calculation_ranges.json
  def create
    @calculation_range = CalculationRange.new(calculation_range_params)

    respond_to do |format|
      if @calculation_range.save
        format.html { redirect_to @calculation_range, notice: 'Calculation range was successfully created.' }
        format.json { render :show, status: :created, location: @calculation_range }
      else
        format.html { render :new }
        format.json { render json: @calculation_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculation_ranges/1
  # PATCH/PUT /calculation_ranges/1.json
  def update
    respond_to do |format|
      if @calculation_range.update(calculation_range_params)
        format.html { redirect_to @calculation_range, notice: 'Calculation range was successfully updated.' }
        format.json { render :show, status: :ok, location: @calculation_range }
      else
        format.html { render :edit }
        format.json { render json: @calculation_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculation_ranges/1
  # DELETE /calculation_ranges/1.json
  def destroy
    @calculation_range.destroy
    respond_to do |format|
      format.html { redirect_to calculation_ranges_url, notice: 'Calculation range was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculation_range
      @calculation_range = CalculationRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calculation_range_params
      params.require(:calculation_range).permit(:name, :value, :insurance_program)
    end
end
