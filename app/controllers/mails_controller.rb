class MailsController < ApplicationController

  def create
    params = mail_params
    puts params

    # FormMailer.form_email

  end

  private

  def mail_params
    params.permit(:name, :email, :subject, :text)
  end

end
