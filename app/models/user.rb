class User < ActiveRecord::Base
  attr_accessor :login

  mount_uploader :avatar, AvatarUploader

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_h).first
    end
  end

end
