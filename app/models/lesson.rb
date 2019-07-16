class Lesson < ApplicationRecord
  belongs_to :section
  has_many :lessons
  mount_uploader :video, VideoUploader
end
