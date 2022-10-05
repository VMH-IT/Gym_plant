class PtgymsMailer < ApplicationMailer
  def account_activation(gymer)
    @gymer = gymer
    mail to: @gymer.email, subject: 'ok'
  end
  def password_reset(gymer)
    @gymer = gymer
    mail to: @gymer.email, subject: 'reset ok'
  end
end
