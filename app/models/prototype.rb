class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :proto_images, dependent: :destroy
  accepts_nested_attributes_for :proto_images, allow_destroy: true
  validates :title, :catch_copy, :concept, presence: true
end
