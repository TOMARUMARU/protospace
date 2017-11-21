class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :proto_images, dependent: :destroy
end
