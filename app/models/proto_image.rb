class ProtoImage < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  enum status: { main: 0, sub: 1}
end
