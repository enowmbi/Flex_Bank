class FlexMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.flex_mailer.account_creation_notification.subject
  #
  def account_creation_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.flex_mailer.bank_transaction_notification.subject
  #
  def bank_transaction_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
