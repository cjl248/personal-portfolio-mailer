# Preview all emails at http://localhost:3000/rails/mailers/form_mailer
class FormMailerPreview < ActionMailer::Preview

  def new_form_email
    @mail = FormMail.new(
      name: "Chris Liendo",
      email: "chris@gmail.com",
      subject: "May have a new job for you!",
      text: "Hi Chris - I took a look at your resume and projects and I think you would be a good fit for a jr. fullstack developer role at Google. Let me know if interested: 646-338-0622"
    )
    FormMailer.with(mail: @mail).new_form_email
  end

end
