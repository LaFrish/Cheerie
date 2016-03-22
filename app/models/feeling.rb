class Feeling < ActiveRecord::Base
  has_many :cheerups
    has_many :posts
end
