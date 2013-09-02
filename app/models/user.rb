class User < ActiveRecord::Base
  include BCrypt
  validates :user_name, presence: true, uniqueness: true
  has_many :games

  def self.authenticate(username, password)
    user = self.find_by_user_name(username)
    return nil if user.nil?
    user.password == password ? user : nil
  end

  def login_error
    self.errors.add(:user_name_or_password, "is not recognized")
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
