class ProtoImage < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :image, ImageUploader
  validates :image, presence: true
end
