class Feeling < ActiveRecord::Base
  has_many :cheerups
  has_many :posts
  has_many :tags
end
