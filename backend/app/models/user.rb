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

  def save_tags(tags)
    current_tags = self.tags.pluck[:tag_name] unless self.tags.nil?
    old_tags = current_tags - tags
    new_tags = tags - current_tags
                  
    old_tags.each do |old_tag|
        self.tags.delete Tags.find_by(name: old_tag)
    end
                  
    new_tags.each do |new_tag|
      user_tag = Tag.find_or_create_by(name: new_tag)
      self.tags << user_tag
    end
  end

end
