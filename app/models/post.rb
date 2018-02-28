class Post < ApplicationRecord
  mount_uploader :attachment, AvatarUploader
  belongs_to :user
  has_many :comments

end
