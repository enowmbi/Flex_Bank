Rails.application.routes.draw do

  root 'dashboards#index'
  resources :signatories
  resources :settings
  resources :setting_types
  resources :organizations
  resources :next_of_kins
  resources :loans
  resources :loan_payments
  resources :loan_officers
  resources :identification_types
  resources :group_members
  resources :employees
  resources :departments
  resources :clients
  resources :client_types
  resources :bank_accounts
  resources :bank_account_types
  resources :accounts
  resources :bank_account_type_settings
  resources :account_types
  resources :accounting_transactions do
    resources :entries
  end

  #single pages in the dashboard
  get 'dashboards/client_and_bank_accounts'
  get 'dashboards/accounting_and_inventory'
  get 'dashboards/communication_and_data'
  get 'dashboards/financial_reports'
  get 'dashboards/human_resources'
  get 'dashboards/loans_and_term_deposits'
  get 'dashboards/settings_and_configurations'
  get 'dashboards/user_accounts'

    # namespace :v1 do
      # post "accounting_transactions/new_entry", to: "account_transactions#new_entry"
    # end
  end

