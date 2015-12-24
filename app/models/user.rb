class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:rememberable,:trackable,:validatable



  has_many :phone_numbers

  belongs_to :admin
  belongs_to :student
  belongs_to :instructor

end
