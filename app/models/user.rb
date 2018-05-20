class User < ApplicationRecord
  acts_as_commontator
  acts_as_voter
	mount_uploader :image, ImageUploader
    has_and_belongs_to_many :lectures

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
