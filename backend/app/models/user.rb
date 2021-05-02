class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  
  has_many :tagmaps, dependent: :destroy
  has_many :tags, through: :tagmaps

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  
  # validates_presence_of :name, :email
  # validates_uniqueness_of :email

  validates :name,  length: { maximum: 20 },
                    presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false}
                    
end
