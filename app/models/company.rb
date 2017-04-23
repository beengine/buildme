# Company can declare contests and tenders
class Company < ApplicationRecord
  belongs_to :user
  has_many :architects
end
