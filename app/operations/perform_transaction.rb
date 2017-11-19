module AccountingTransactions
  class PerformTransaction
    def initialize(account_id: ,entry_type:,description:, amount:,accounting_transaction_id:)
      @errors =[]

      @amount = amount
      @account_id = account_id
      @entry_type = entry_type
      @description = description
      @accounting_transaction_id = accounting_transaction_id
    end

    def execute
      Entry.create(amount: @amount, account_id:@account_id,entry_type: @entry_type, description: @description, accounting_transaction_id: @accounting_transaction_id)

    end

     
    
  end
end
