# Preview all emails at http://localhost:3000/rails/mailers/flex_mailer
class FlexMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/flex_mailer/account_creation_notification
  def account_creation_notification
    FlexMailer.account_creation_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/flex_mailer/bank_transaction_notification
  def bank_transaction_notification
    FlexMailer.bank_transaction_notification
  end

end
