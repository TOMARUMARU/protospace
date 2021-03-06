class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :proto_images, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :proto_images, allow_destroy: true
  validates :title, :catch_copy, :concept, presence: true

  scope :popular, -> { includes(:user).order('likes_count desc') }
  scope :newest, -> { includes(:user).order('created_at desc') }

  def main_image
    proto_images.main.first.image.url
  end

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

end
