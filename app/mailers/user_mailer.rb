class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.next_agenda.subject
  #
  def next_agenda()
    mail to: User.find(3).email
  end
end
