class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail to:   ENV['TOMAIL'], flom: ENV['SMTP_USERNAME'], subject: '【お問い合わせ】'
  end
end
