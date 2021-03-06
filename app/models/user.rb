class User < ActiveRecord::Base
  attr_accessible :name, :email, :password
  has_secure_password
  before_save :create_remember_token
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }, presence: true

  has_many :snippets, dependent: :destroy
  has_many :tags , through: :snippets

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
