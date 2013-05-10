class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_type, :registration_number, :academic_programme, :full_name
  # attr_accessible :title, :body
  validates :user_type, :presence => true
  validates :full_name, :presence => true
  validates :registration_number, :presence => true, :if => :is_student?
  validates_uniqueness_of :registration_number, :if => :is_student?
  validates :academic_programme, :presence => true, :if => :is_student?

  def is_student?
    user_type == "Student"
  end
end
