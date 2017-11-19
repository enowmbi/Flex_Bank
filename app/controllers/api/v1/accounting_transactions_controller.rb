module Api
  module V1

    class AccountingTransactionsController < ApplicationController

      def new_entry
        amount = params[:amount]
        account_id = params[:account_id]
        description = params[:description]
        entry_type = params[:entry_type]
        accounting_transaction_id = params[:accounting_transaction_id]

        entry = ::AccountingTransaction::PerformTransaction.new(amount: amount,account_id:account_id,description: description, entry_type: entry_type,accounting_transaction_id: accounting_transaction_id).execute

      end
    end
  end

end
