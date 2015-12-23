class Mcq < ActiveRecord::Base

	has_many :mcq_choices
	belongs_to :question



end
