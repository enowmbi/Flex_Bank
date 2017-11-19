class LoanOfficersController < ApplicationController
  before_action :set_loan_officer, only: [:show, :edit, :update, :destroy]

  # GET /loan_officers
  # GET /loan_officers.json
  def index
    @loan_officers = LoanOfficer.all
  end

  # GET /loan_officers/1
  # GET /loan_officers/1.json
  def show
  end

  # GET /loan_officers/new
  def new
    @loan_officer = LoanOfficer.new
  end

  # GET /loan_officers/1/edit
  def edit
  end

  # POST /loan_officers
  # POST /loan_officers.json
  def create
    @loan_officer = LoanOfficer.new(loan_officer_params)

    respond_to do |format|
      if @loan_officer.save
        format.html { redirect_to @loan_officer, notice: 'Loan officer was successfully created.' }
        format.json { render :show, status: :created, location: @loan_officer }
      else
        format.html { render :new }
        format.json { render json: @loan_officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_officers/1
  # PATCH/PUT /loan_officers/1.json
  def update
    respond_to do |format|
      if @loan_officer.update(loan_officer_params)
        format.html { redirect_to @loan_officer, notice: 'Loan officer was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan_officer }
      else
        format.html { render :edit }
        format.json { render json: @loan_officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_officers/1
  # DELETE /loan_officers/1.json
  def destroy
    @loan_officer.destroy
    respond_to do |format|
      format.html { redirect_to loan_officers_url, notice: 'Loan officer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_officer
      @loan_officer = LoanOfficer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_officer_params
      params.require(:loan_officer).permit(:employee_id, :loan_id)
    end
end
