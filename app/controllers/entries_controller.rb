class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  # before_action :init_transaction, only: [:create]

  # GET /entries
  # GET /entries.json
  # def index
  #   # @entries = Entry.all
  # end
  #
  # # GET /entries/1
  # # GET /entries/1.json
  # def show
  # end
  #
  # # GET /entries/new
  # def new
  #   # @entry =@transaction.entries.build
  #   # @entry = Entry.new
  # end
  #
  # # GET /entries/1/edit
  def edit
  end
  #
  # POST /entries
  # POST /entries.json
  def create
     @transaction = AccountingTransaction.find(params[:accounting_transaction_id])
      @entry = @transaction.entries.build(entry_params)
      # @entry.transaction_id = @transaction.id
    respond_to do |format|
      if @entry.save
        format.html { redirect_to @transaction, notice: 'Entry was successfully created.' }# go back to error page and display success - 
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }# go to modal page and display the error there
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  # def destroy
  #   @entry.destroy
  #   respond_to do |format|
  #     format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = Entry.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def entry_params
    params.require(:entry).permit(:description, :account_id, :amount, :entry_type, :accounting_transaction_id)
  end

  def init_transaction
    @transaction =AccountingTransaction.find(params[:id]) 
  end
end
