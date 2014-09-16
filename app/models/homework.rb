class Homework < ActiveRecord::Base
  belongs_to :course
  has_many :homework_deliveries
end
