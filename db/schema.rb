# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180101115734) do

  create_table "account_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "description"
    t.string   "normal_balance"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "accounting_transactions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "transaction_date"
    t.text     "description",      limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description",     limit: 65535
    t.boolean  "contra"
    t.integer  "parent_id"
    t.integer  "account_type_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "bank_account_type_settings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "value"
    t.text     "description",          limit: 65535
    t.string   "frequency"
    t.boolean  "percent"
    t.string   "apply_to"
    t.integer  "bank_account_type_id"
    t.integer  "setting_type_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "bank_account_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "bank_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "account_number"
    t.string   "currency"
    t.boolean  "enable_sms_alert"
    t.boolean  "enable_email_alert"
    t.integer  "bank_account_type_id"
    t.integer  "account_officer"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "client_id"
  end

  create_table "client_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.boolean  "is_group"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.text     "address",                limit: 65535
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.integer  "identification_type_id"
    t.string   "identification_number"
    t.integer  "client_type_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "departments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.text     "address",                limit: 65535
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.integer  "identification_type_id"
    t.string   "identification_number"
    t.integer  "department_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "entries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "description"
    t.integer  "account_id"
    t.decimal  "amount",                    precision: 10
    t.string   "entry_type"
    t.integer  "accounting_transaction_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "group_members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.text     "address",                limit: 65535
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.integer  "identification_type_id"
    t.integer  "identification_number"
    t.integer  "client_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "identification_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "loan_officers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "employee_id"
    t.integer  "loan_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "loan_payments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "loan_id"
    t.decimal  "principal_expected", precision: 10
    t.decimal  "principal_paid",     precision: 10
    t.decimal  "interest_expected",  precision: 10
    t.decimal  "interest_paid",      precision: 10
    t.decimal  "charges_paid",       precision: 10
    t.date     "date_of_payment"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "loans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.decimal  "principal_requested", precision: 10
    t.decimal  "principal_approved",  precision: 10
    t.decimal  "interest",            precision: 10
    t.decimal  "charges",             precision: 10
    t.boolean  "percent"
    t.boolean  "paid_in_full"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.decimal  "application_fee",     precision: 10
    t.date     "starts_on"
    t.date     "ends_on"
    t.integer  "duration"
  end

  create_table "next_of_kins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.text     "address",                limit: 65535
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.string   "relationship"
    t.integer  "identification_type_id"
    t.integer  "identification_number"
    t.integer  "bank_account_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "organizations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "address",            limit: 65535
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.string   "tax_payers_number"
    t.string   "cnps_number"
    t.string   "motto"
    t.integer  "parent_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "setting_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "settings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "value"
    t.text     "description",     limit: 65535
    t.integer  "organization_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "setting_type_id"
  end

  create_table "signatories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.text     "address",                  limit: 65535
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.string   "relationship_or_position"
    t.boolean  "major_signatory"
    t.integer  "identification_type_id"
    t.integer  "identification_number"
    t.integer  "bank_account_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
