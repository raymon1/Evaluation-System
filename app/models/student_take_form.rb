class StudentTakeForm < ActiveRecord::Base

	belongs_to :student
	belongs_to :form

end
