class AccountingTransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  before_action :set_transaction_total, only: [:index, :show]
  # GET /accounting_transactions
  # GET /accounting_transactions.json
  def index
    @transactions = AccountingTransaction.all
  end

  # GET /accounting_transactions/1
  # GET /accounting_transactions/1.json
  def show
     @transaction_entries = @transaction.entries
     @accounts = Account.all
  end

  # GET /accounting_transactions/new
  def new
     @transaction = AccountingTransaction.new
  end

  # GET /accounting_transactions/1/edit
  def edit
  end

  # POST /accounting_transactions
  # POST /accounting_transactions.json
  def create
     @transaction =AccountingTransaction.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounting_transactions/1
  # PATCH/PUT /accounting_transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounting_transactions/1
  # DELETE /accounting_transactions/1.json
  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to accounting_transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_transaction
    @transaction = AccountingTransaction.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def transaction_params
    params.require(:accounting_transaction).permit(:transaction_date, :description)
  end

  # Set up debit and credit total
  def set_transaction_total
    @total_debits = params[:id].nil? ?  0 : AccountingTransaction.find(params[:id]).entries.where(entry_type:"Debit").sum(:amount)
    @total_credits = params[:id].nil? ? 0 :  AccountingTransaction.find(params[:id]).entries.where(entry_type:"Credit").sum(:amount)
  end

end

