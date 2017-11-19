class DashboardsController < ApplicationController

    def index
        @page_title = "Dashboard"
    end

    def client_and_bank_accounts
        @page_title ='Client and Bank Accounts'
    end

    def accounting_and_inventory
        @page_title = 'Accounting and Inventory'
    end

    def communication_and_data
        @page_title = 'Communication and Data'
    end

    def financial_reports
        @page_title = 'Financial Reports'
    end

    def human_resources
        @page_title = 'Human Resources'
    end

    def loans_and_term_deposits
        @page_title = 'Loans and Term Deposits'
    end

    def settings_and_configurations
        @page_title = 'Settings and Configurations'
    end

    def user_accounts
        @page_title = 'User Accounts'
    end
end
