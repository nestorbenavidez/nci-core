class InsuranceProgramsController < ApplicationController
  before_action :set_insurance_program, only: [:show, :edit, :update, :destroy]

  # GET /insurance_programs
  # GET /insurance_programs.json
  def index
    @insurance_programs = InsuranceProgram.all
  end

  # GET /insurance_programs/1
  # GET /insurance_programs/1.json
  def show
  end

  # GET /insurance_programs/new
  def new
    @insurance_program = InsuranceProgram.new
  end

  # GET /insurance_programs/1/edit
  def edit
  end

  # POST /insurance_programs
  # POST /insurance_programs.json
  def create
    @insurance_program = InsuranceProgram.new(insurance_program_params)

    respond_to do |format|
      if @insurance_program.save
        format.html { redirect_to @insurance_program, notice: 'Insurance program was successfully created.' }
        format.json { render :show, status: :created, location: @insurance_program }
      else
        format.html { render :new }
        format.json { render json: @insurance_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insurance_programs/1
  # PATCH/PUT /insurance_programs/1.json
  def update
    respond_to do |format|
      if @insurance_program.update(insurance_program_params)
        format.html { redirect_to @insurance_program, notice: 'Insurance program was successfully updated.' }
        format.json { render :show, status: :ok, location: @insurance_program }
      else
        format.html { render :edit }
        format.json { render json: @insurance_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurance_programs/1
  # DELETE /insurance_programs/1.json
  def destroy
    @insurance_program.destroy
    respond_to do |format|
      format.html { redirect_to insurance_programs_url, notice: 'Insurance program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance_program
      @insurance_program = InsuranceProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insurance_program_params
      params.require(:insurance_program).permit(:name, :broker_fee, :inspection_fee, :surplus_fee, :surplus_tax, :calc_type, field_classes_attributes: [:id, :name])
    end

end
