class MailsController < ApplicationController

  def index
    mail  = FormMail.all
    render json: mail
  end

  def create
    params = mail_params
    mail = FormMail.create(params)
    if (mail)
      render json: mail, status: 200
    else
      render json: mail.errors
    end
    # @mail_info = FormMail.create(mail_params)
    # email = FormMailer.form_email(params.name, params.email, params.subject, params.text)

  end

  private

  def mail_params
    params.require(:mail).permit(:name, :email, :subject, :text)
  end

end
