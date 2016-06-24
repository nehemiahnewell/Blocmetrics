class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :send_user_emails
  has_many :registered_applications
   private
 
   def send_user_emails
      LogonMailer.new_signup(self).deliver_now
   end
end
