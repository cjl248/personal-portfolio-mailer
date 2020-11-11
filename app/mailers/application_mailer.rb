class ApplicationMailer < ActionMailer::Base
  default from: 'c.liendo248@gmail.com'
  layout 'mailer'


  private

  def from_email
    ENV["FROM_EMAIL"]
  end

  def to_email
    ENV["TO_EMAIL"]
  end

end
