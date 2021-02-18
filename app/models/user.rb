class User < ActiveRecord::Base

  acts_as_follower
  acts_as_followable

  mount_uploader :photo, PhotoUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name    , presence: true, length: { maximum: 50 }
  validates :username, presence: true, length: { maximum: 20 }, :uniqueness => { case_sensitive: false }
  validates_processing_of :photo

  has_many :microposts, :dependent => :destroy

  before_save :prepare_username

  protected
    def prepare_username
      self.username = self.username.remove(" ","").downcase.to(19)
    end

end