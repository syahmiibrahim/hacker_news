class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments
  has_many :posts
  validates_format_of :email :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :username, :password, :emal, presence: true
  validates_uniqueness_of :email,:username 
  
  def self.authenticate(username,password) do 
    @user = User.find_by_username(username)

    if account
      if @user.password == password
        return @user
      else
        return false
      end
    end

  end
end

