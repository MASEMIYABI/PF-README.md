class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    mail to: ENV['TOMAIL'], subject: "メールのタイトル"
  end
end
