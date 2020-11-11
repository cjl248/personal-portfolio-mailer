class MailsController < ApplicationController

  def index
    @mail  = FormMail.all
    render json: @mail
  end

  def create
    @mail = FormMail.new(mail_params)
    if (@mail.save)
      email = FormMailer.with(mail: @mail).new_form_email
      # byebug
      email.deliver_now
      render json: @mail, status: 202
    else
      render json: @mail.errors, status: 422
    end

  end

  private

  def mail_params
    params.require(:mail).permit(:name, :email, :subject, :text)
  end

end
