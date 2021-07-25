class User < ActiveRecord::Base

    has_many :finstagram_posts
    has_many :comments
    has_many :likes

    # validations
    validates :email, :username, uniqueness: true
    validates :email, :avatar_url, :username, :password, presence: true

end
