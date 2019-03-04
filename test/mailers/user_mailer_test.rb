require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "next_agenda" do
    mail = UserMailer.next_agenda
    assert_equal "Next agenda", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
