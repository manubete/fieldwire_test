class Floorplan < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :project
end
