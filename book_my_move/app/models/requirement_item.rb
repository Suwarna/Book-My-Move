class RequirementItem < ActiveRecord::Base
  belongs_to :requirement
  belongs_to :item
end
