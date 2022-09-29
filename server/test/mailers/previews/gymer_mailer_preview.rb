# Preview all emails at http://localhost:3000/rails/mailers/gymer_mailer
class GymerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/gymer_mailer/account_activation
  def account_activation
    GymerMailer.account_activation
  end

  # Preview this email at http://localhost:3000/rails/mailers/gymer_mailer/password_reset
  def password_reset
    GymerMailer.password_reset
  end

end
