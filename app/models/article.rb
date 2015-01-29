class Article < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { in: 5..10 }
  validates :text, presence: true
end
