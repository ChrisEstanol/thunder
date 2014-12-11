class UserMailer < ActionMailer::Base
  default from: "cestanol@gmail.com"

  def friend_email(friend, current_user)
    @user_likes = friend
    @user_liked = current_user
    mail(to: @user_likes.email, subject: 'Thunder Match')
  end

  def user_email(current_user, friend)
    @user_liked = current_user
    @user_likes = friend
    mail(to: @user_liked.email, subject: 'Thunder Match')
  end

end
