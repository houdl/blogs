class User < ActiveRecord::Base
	has_many :articles, dependent: :destroy
	has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 # mount_uploader :picture, UserAvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
end
