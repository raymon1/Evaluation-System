class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:rememberable,:trackable,:validatable



  has_many :phone_numbers

  belongs_to :admins
  belongs_to :students
  belongs_to :instructors

end
