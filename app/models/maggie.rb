class Maggie < ActiveRecord::Base
  mount_uploader :photo, PictureUploader
end
