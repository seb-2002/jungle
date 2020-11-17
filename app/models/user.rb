class User < ActiveRecord::Base
  has_secure_password


  validate :passwords_match
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :password_digest, presence: true

  def passwords_match 
    if password != password_confirmation
      errors.add(:password_confirmation, 'Password fields must match')
    end
  end
end

