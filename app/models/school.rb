class School < ActiveRecord::Base
	has_many :reports, dependent: :destroy
end
