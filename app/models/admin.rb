class Admin < ActiveRecord::Base

	has_one :user, foreign_key: "college_id"


end
