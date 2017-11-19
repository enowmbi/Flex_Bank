class BankAccountTypeSettingsController < ApplicationController
  before_action :set_bank_account_type_setting, only: [:show, :edit, :update, :destroy]

  # GET /bank_account_type_settings
  # GET /bank_account_type_settings.json
  def index
    @bank_account_type_settings = BankAccountTypeSetting.all
  end

  # GET /bank_account_type_settings/1
  # GET /bank_account_type_settings/1.json
  def show
  end

  # GET /bank_account_type_settings/new
  def new
    @bank_account_type_setting = BankAccountTypeSetting.new
  end

  # GET /bank_account_type_settings/1/edit
  def edit
  end

  # POST /bank_account_type_settings
  # POST /bank_account_type_settings.json
  def create
    @bank_account_type_setting = BankAccountTypeSetting.new(bank_account_type_setting_params)

    respond_to do |format|
      if @bank_account_type_setting.save
        format.html { redirect_to @bank_account_type_setting, notice: 'Bank account type setting was successfully created.' }
        format.json { render :show, status: :created, location: @bank_account_type_setting }
      else
        format.html { render :new }
        format.json { render json: @bank_account_type_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_account_type_settings/1
  # PATCH/PUT /bank_account_type_settings/1.json
  def update
    respond_to do |format|
      if @bank_account_type_setting.update(bank_account_type_setting_params)
        format.html { redirect_to @bank_account_type_setting, notice: 'Bank account type setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @bank_account_type_setting }
      else
        format.html { render :edit }
        format.json { render json: @bank_account_type_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_account_type_settings/1
  # DELETE /bank_account_type_settings/1.json
  def destroy
    @bank_account_type_setting.destroy
    respond_to do |format|
      format.html { redirect_to bank_account_type_settings_url, notice: 'Bank account type setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_account_type_setting
      @bank_account_type_setting = BankAccountTypeSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_account_type_setting_params
      params.require(:bank_account_type_setting).permit(:name, :value, :description, :frequency, :percent, :apply_to, :bank_account_type_id, :setting_type_id)
    end
end
