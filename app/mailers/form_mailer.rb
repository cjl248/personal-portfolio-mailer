class FormMailer < ApplicationMailer
  default from: 'c.liendo248@gmail.com'
  layout 'mailer'

  def new_form_email
    # @mail = FormMail.create({
    #   name: params[:mail].name,
    #   email: params[:mail].email,
    #   subject: params[:mail].subject,
    #   text: params[:mail].text
    #   })

    @mail = params[:mail]
    mail(to: to_email, subject: "New Message: #{@mail.subject}")

  end


  private

  def to_email
    ENV["TO_EMAIL"]
  end

  def from_email
    ENV["FROM_EMAIL"]
  end

end
