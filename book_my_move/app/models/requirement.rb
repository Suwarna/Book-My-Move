class Requirement < ActiveRecord::Base
	has_many :requirementitems
	has_many :items, through: :requirementitems
end
