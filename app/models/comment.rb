class Comment < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users
  has_many :comments

end
