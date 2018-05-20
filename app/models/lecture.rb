class Lecture < ActiveRecord::Base
	
    acts_as_commontable dependent: :destroy
	acts_as_votable
	belongs_to :course
	has_and_belongs_to_many :users
   #acts_as_votable
	mount_uploader :attachment, AttachmentUploader
end
