# Class describes architects. Architect can public his projects and participate in contests
class Architect < ApplicationRecord
  belongs_to :user
  belongs_to :alma_mater, class_name: 'University'
  belongs_to :company
end
