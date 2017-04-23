# University can declare contests. Also architects mark his own alma mater as well.
class University < ApplicationRecord
  belongs_to :user

  has_many :departments, class_name: 'University', foreign_key: 'parent_univ_id'
  belongs_to :parent_univ, class_name: 'University'

  has_many :architects
end
