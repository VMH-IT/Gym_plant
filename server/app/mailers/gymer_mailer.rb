class GymerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gymer_mailer.account_activation.subject
  #
  def account_activation(gymer)
    @gymer = gymer

    mail to: @gymer.email, subject: 'ok'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gymer_mailer.password_reset.subject
  #
  def password_reset(gymer)
    @gymer = gymer

    mail to: @gymer.email, subject: 'reset ok'
  end
end
