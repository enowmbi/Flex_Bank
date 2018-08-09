class SignatoriesController < ApplicationController
  before_action :set_parent_object
  before_action :set_signatory, only: [:show, :edit, :update, :destroy]

  # GET /signatories
  # GET /signatories.json
  def index
    @signatories = @bank_account.signatories
  end

  # GET /signatories/1
  # GET /signatories/1.json
  def show
  end

  # GET /signatories/new
  def new
    @signatory = Signatory.new
  end

  # GET /signatories/1/edit
  def edit
  end

  # POST /signatories
  # POST /signatories.json
  def create
    @signatory =@bank_account.signatories.new(signatory_params)

    respond_to do |format|
      if @signatory.save
        format.html { redirect_to client_bank_account_signatory_path(@client,@bank_account,@signatory), notice: 'Signatory was successfully created.' }
        format.json { render :show, status: :created, location: @signatory }
      else
        format.html { render :new }
        format.json { render json: @signatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signatories/1
  # PATCH/PUT /signatories/1.json
  def update
    respond_to do |format|
      if @signatory.update(signatory_params)
        format.html { redirect_to client_bank_account_signatory_path(@client,@bank_account,@signatory), notice: 'Signatory was successfully updated.' }
        format.json { render :show, status: :ok, location: @signatory }
      else
        format.html { render :edit }
        format.json { render json: @signatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signatories/1
  # DELETE /signatories/1.json
  def destroy
    @signatory.destroy
    respond_to do |format|
      format.html { redirect_to client_bank_account_signatories_url, notice: 'Signatory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_signatory
    @signatory = Signatory.find(params[:id])
    @client = Client.find(params[:client_id])
    @bank_account = BankAccount.find(params[:bank_account_id])
    @bank_account.client = @client
    @signatory.bank_account = @bank_account
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def signatory_params
    params.require(:signatory).permit(:first_name, :middle_name, :last_name, :address, :phone, :email, :city, :relationship_or_position, :major_signatory, :identification_type_id, :identification_number, :bank_account_id, :image)
  end

  def set_parent_object
    @client = Client.find(params[:client_id])
    @bank_account = @client.bank_accounts.find(params[:bank_account_id])
  end
end
