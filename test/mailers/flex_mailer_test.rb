require 'test_helper'

class FlexMailerTest < ActionMailer::TestCase
  test "account_creation_notification" do
    mail = FlexMailer.account_creation_notification
    assert_equal "Account creation notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "bank_transaction_notification" do
    mail = FlexMailer.bank_transaction_notification
    assert_equal "Bank transaction notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
