class Post < ActiveRecord::Base
  belongs_to :cheerups
  has_many :tags
end
