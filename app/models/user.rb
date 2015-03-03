class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :name, presence: true

  has_many :cakes
  has_many :comments

  after_create :welcome_email

  private

  def welcome_email
    UserMailer.welcome_email(self).deliver 
    # flash[:notice] = "You've got a mail!"
  end
end



