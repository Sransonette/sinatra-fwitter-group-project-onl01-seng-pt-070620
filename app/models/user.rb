class User < ActiveRecord::Base
  validates_presence_of :username, :email, :password
  has_secure_password
  has_many :tweets

def slug
    username.strip.downcase.gsub(" ","-")
end

def self.find_by_slug(slug)
    User.all.find{|user| user.slug == slug}
end



end
