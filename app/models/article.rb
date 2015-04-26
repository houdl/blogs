class Article < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :user, required: true
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { in: 5..10 }
  validates :text, presence: true
end
