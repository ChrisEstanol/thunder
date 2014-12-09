class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url = 'http://thunder.com/login'
    mail(to: @user.email, subject: 'Welcome to Thunder')
  end
end
