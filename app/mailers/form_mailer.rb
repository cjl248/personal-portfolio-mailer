class FormMailer < ApplicationMailer
  default from: 'cjl248@cornell.edu'

  def form_email(name, email, subject, text)
    @text_intro = "Hey Chris, #{name} sent you a message using your form! \n"
    mail(to: "cjl248@cornell.edu", subject: "NEW Form Message")
  end

end
