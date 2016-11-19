class User < ActiveRecord::Base
  attr_accessor :password
  before_save :encrypt_password

  validates :password, presence: true, on: :create
  validates :password, confirmation: true
  validates :email, presence: true, uniqueness: true

  def self.authenticate(email, password)
    user = find_by_email(email)
    return unless user

    secret = BCrypt::Engine.hash_secret(password, user.password_salt)
    user if user.password_hash == secret
  end

  def encrypt_password
    return unless password.present?

    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end
end
