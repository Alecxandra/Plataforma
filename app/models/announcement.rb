class Announcement < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  has_many :comments
end
