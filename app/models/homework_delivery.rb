class HomeworkDelivery < ActiveRecord::Base
  belongs_to :homework
  belongs_to :student
  mount_uploader :work, WorkUploader
end
