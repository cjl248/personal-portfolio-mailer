class FormMailer < ApplicationMailer
  default from: 'c.liendo248@gmail.com'
  layout 'mailer'

  def new_form_email
    @mail = params[:mail]
    mail(to: to_email, subject: "New SiteMessage 📨: #{@mail.subject}")

  end


  private

  def to_email
    ENV["TO_EMAIL"]
  end

  def from_email
    ENV["FROM_EMAIL"]
  end

end
