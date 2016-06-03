class LogonMailer < ApplicationMailer
  default from: "nehemiah.newell@gmail.com"
  
  def new_signup(user)
 
     headers["Message-ID"] = "<users/#{user.email}@your-app-name.example>"
     
     @user = user
     mail(to: user.email, subject: "Thanks for signing up.")
  end
end
